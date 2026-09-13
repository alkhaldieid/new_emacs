;;; eid-signal.el --- Signal-pipeline and publishing workflow -*- lexical-binding: t; -*-

;;; Commentary:
;; Async signal-pipeline runner plus review, AI refinement, LinkedIn draft, and
;; website publication helpers.  No command here pushes or publishes without
;; explicit user confirmation.

;;; Code:

(require 'cl-lib)
(require 'seq)
(require 'subr-x)
(require 'eid-platform)
(require 'eid-leader)
(require 'eid-ai nil t)

(declare-function magit-status "magit-status" (&optional directory))
(defvar global-mode-string)

(defgroup eid-signal nil
  "Signal-pipeline and website publishing settings."
  :group 'eid
  :prefix "eid-signal-")

(defcustom eid-signal-command '("make" "run")
  "Command used to run signal-pipeline asynchronously."
  :type '(repeat string)
  :group 'eid-signal)

(defcustom eid-signal-output-directories
  '("output" "outputs" "posts" "drafts" "content" "data/output")
  "Relative directories scanned for generated signal-pipeline posts."
  :type '(repeat string)
  :group 'eid-signal)

(defcustom eid-signal-post-file-regexp "\\.\\(md\\|org\\|txt\\)\\'"
  "Regexp matching generated signal-pipeline post files."
  :type 'regexp
  :group 'eid-signal)

(defcustom eid-signal-log-buffer-name "*signal-pipeline*"
  "Buffer name for signal-pipeline process logs."
  :type 'string
  :group 'eid-signal)

(defcustom eid-signal-progress-buffer-name "*signal-pipeline-progress*"
  "Buffer name for signal-pipeline progress dashboard."
  :type 'string
  :group 'eid-signal)

(defcustom eid-signal-progress-refresh-seconds 1
  "Seconds between progress dashboard refreshes while the pipeline runs."
  :type 'number
  :group 'eid-signal)

(defcustom eid-signal-progress-log-lines 25
  "Number of recent log lines shown in the progress dashboard."
  :type 'integer
  :group 'eid-signal)

(defcustom eid-website-content-directory "content/posts"
  "Relative directory in `eid-personal-website-directory' for article drafts."
  :type 'string
  :group 'eid-signal)

(defcustom eid-website-build-command '("make" "build")
  "Website command used after a draft is copied into the website repo."
  :type '(repeat string)
  :group 'eid-signal)

(defcustom eid-website-preview-command '("python3" "-m" "http.server" "8000")
  "Command (run in the website repo) to serve the built static site locally."
  :type '(repeat string)
  :group 'eid-signal)

(defcustom eid-website-preview-url "http://localhost:8000"
  "Local website preview URL."
  :type 'string
  :group 'eid-signal)

(defcustom eid-website-review-command '("npm" "run" "review:posts")
  "Command run in the website repo to refresh the signal-post review list."
  :type '(repeat string)
  :group 'eid-signal)

(defcustom eid-website-publish-command '("npm" "run" "publish:posts")
  "Command run in the website repo to publish curated posts (the site gates it)."
  :type '(repeat string)
  :group 'eid-signal)

(defvar eid-signal--latest-post nil
  "Most recent signal post opened or published.")

(defvar eid-signal--last-published-target nil
  "Last website target created by `eid/signal-publish-to-website'.")

(defvar eid-signal--process nil
  "Currently running signal-pipeline process.")

(defvar eid-signal--status 'idle
  "Current signal-pipeline status.")

(defvar eid-signal--started-at nil
  "Time when the current signal-pipeline run started.")

(defvar eid-signal--finished-at nil
  "Time when the current signal-pipeline run finished.")

(defvar eid-signal--exit-status nil
  "Exit status from the latest signal-pipeline run.")

(defvar eid-signal--progress-timer nil
  "Timer used to refresh the signal-pipeline progress dashboard.")

(defvar eid-signal--mode-line-installed nil
  "Non-nil when signal-pipeline status is installed in `global-mode-string'.")

(defun eid-signal--valid-directory (directory)
  "Return DIRECTORY when it exists, otherwise signal a user error."
  (unless (file-directory-p directory)
    (user-error "Directory does not exist: %s" directory))
  directory)

(defun eid-signal--format-duration (seconds)
  "Format SECONDS as a compact duration."
  (let* ((seconds (max 0 (floor seconds)))
         (minutes (/ seconds 60))
         (remaining (% seconds 60))
         (hours (/ minutes 60))
         (minutes (% minutes 60)))
    (if (> hours 0)
        (format "%dh %02dm %02ds" hours minutes remaining)
      (format "%dm %02ds" minutes remaining))))

(defun eid-signal--elapsed ()
  "Return elapsed seconds for the current or latest signal run."
  (when eid-signal--started-at
    (float-time
     (time-subtract (or eid-signal--finished-at (current-time))
                    eid-signal--started-at))))

(defun eid-signal--status-label ()
  "Return a readable signal-pipeline status label."
  (pcase eid-signal--status
    ('running "running")
    ('succeeded "succeeded")
    ('failed "failed")
    ('stopped "stopped")
    (_ "idle")))

(defun eid-signal--mode-line ()
  "Return mode-line text for signal-pipeline status."
  (pcase eid-signal--status
    ('running
     (format " Signal:%s" (or (and (eid-signal--elapsed)
                                   (eid-signal--format-duration (eid-signal--elapsed)))
                              "running")))
    ('succeeded " Signal:done")
    ('failed " Signal:failed")
    ('stopped " Signal:stopped")
    (_ "")))

(defun eid-signal--ensure-mode-line ()
  "Install signal-pipeline status in the mode line."
  (unless eid-signal--mode-line-installed
    (add-to-list 'global-mode-string '(:eval (eid-signal--mode-line)) t)
    (setq eid-signal--mode-line-installed t)))

(defun eid-signal--recent-log-lines ()
  "Return recent signal-pipeline log lines for the progress dashboard."
  (let ((buffer (get-buffer eid-signal-log-buffer-name)))
    (if (not buffer)
        "No log buffer yet."
      (with-current-buffer buffer
        (let* ((text (string-trim (buffer-substring-no-properties
                                   (point-min) (point-max))))
               (lines (if (string-empty-p text)
                          nil
                        (split-string text "\n")))
               (tail (last lines (min eid-signal-progress-log-lines
                                      (length lines)))))
          (if tail
              (string-join tail "\n")
            "Log buffer is empty."))))))

(defun eid-signal--latest-post-line ()
  "Return a readable latest-post line for progress."
  (condition-case nil
      (format "%s" (eid-signal-latest-post))
    (error "No generated post found yet.")))

(defun eid-signal--render-progress ()
  "Render the signal-pipeline progress dashboard."
  (let ((buffer (get-buffer-create eid-signal-progress-buffer-name)))
    (with-current-buffer buffer
      (let ((inhibit-read-only t))
        (erase-buffer)
        (insert "Signal Pipeline Progress\n")
        (insert "========================\n\n")
        (insert (format "Status:   %s\n" (eid-signal--status-label)))
        (insert (format "Command:  %s\n" (string-join eid-signal-command " ")))
        (insert (format "Repo:     %s\n" eid-signal-pipeline-directory))
        (insert (format "Started:  %s\n"
                        (if eid-signal--started-at
                            (format-time-string "%Y-%m-%d %H:%M:%S"
                                                eid-signal--started-at)
                          "not started")))
        (insert (format "Elapsed:  %s\n"
                        (if-let ((elapsed (eid-signal--elapsed)))
                            (eid-signal--format-duration elapsed)
                          "0m 00s")))
        (insert (format "Exit:     %s\n"
                        (or eid-signal--exit-status "n/a")))
        (insert (format "Latest:   %s\n" (eid-signal--latest-post-line)))
        (insert (format "Log:      %s\n\n" eid-signal-log-buffer-name))
        (insert "Recent Log\n")
        (insert "----------\n")
        (insert (eid-signal--recent-log-lines))
        (insert "\n\nCommands: M-x eid/signal-show-log, M-x eid/signal-stop\n")
        (goto-char (point-min))
        (special-mode)))
    buffer))

(defun eid-signal--refresh-progress ()
  "Refresh progress dashboard and mode-line status."
  (when (get-buffer eid-signal-progress-buffer-name)
    (eid-signal--render-progress))
  (force-mode-line-update t))

(defun eid-signal--start-progress-timer ()
  "Start the signal progress refresh timer."
  (when (timerp eid-signal--progress-timer)
    (cancel-timer eid-signal--progress-timer))
  (setq eid-signal--progress-timer
        (run-at-time 0 eid-signal-progress-refresh-seconds
                     #'eid-signal--refresh-progress)))

(defun eid-signal--stop-progress-timer ()
  "Stop the signal progress refresh timer."
  (when (timerp eid-signal--progress-timer)
    (cancel-timer eid-signal--progress-timer))
  (setq eid-signal--progress-timer nil)
  (eid-signal--refresh-progress))

(defun eid-signal--process-buffer (name)
  "Return process buffer NAME in compilation mode."
  (let ((buffer (get-buffer-create name)))
    (with-current-buffer buffer
      (let ((inhibit-read-only t))
        (erase-buffer))
      (compilation-mode))
    buffer))

(defun eid-signal--start-process (name buffer directory command)
  "Start async process NAME in BUFFER under DIRECTORY with COMMAND."
  (let ((default-directory directory))
    (make-process
     :name name
     :buffer buffer
     :command command
     :noquery t
     :sentinel
     (lambda (process event)
       (when (memq (process-status process) '(exit signal))
         (setq eid-signal--finished-at (current-time)
               eid-signal--exit-status (process-exit-status process)
               eid-signal--status
               (cond
                ((eq (process-status process) 'signal) 'stopped)
                ((zerop (process-exit-status process)) 'succeeded)
                (t 'failed))
               eid-signal--process nil)
         (with-current-buffer (process-buffer process)
           (let ((inhibit-read-only t))
             (goto-char (point-max))
             (insert (format "\nProcess %s %s" (process-name process) event)))))
         (eid-signal--stop-progress-timer)))))

(defun eid/signal-run ()
  "Run signal-pipeline asynchronously from Emacs."
  (interactive)
  (when (and eid-signal--process
             (process-live-p eid-signal--process))
    (user-error "signal-pipeline is already running"))
  (let* ((directory (eid-signal--valid-directory eid-signal-pipeline-directory))
         (buffer (eid-signal--process-buffer eid-signal-log-buffer-name)))
    (setq eid-signal--status 'running
          eid-signal--started-at (current-time)
          eid-signal--finished-at nil
          eid-signal--exit-status nil)
    (eid-signal--ensure-mode-line)
    (setq eid-signal--process
          (eid-signal--start-process
           "signal-pipeline" buffer directory eid-signal-command))
    (display-buffer buffer)
    (pop-to-buffer (eid-signal--render-progress))
    (eid-signal--start-progress-timer)
    (message "signal-pipeline started in %s" directory)))

(defun eid/signal-progress ()
  "Show the signal-pipeline progress dashboard."
  (interactive)
  (pop-to-buffer (eid-signal--render-progress)))

(defun eid/signal-show-log ()
  "Show the signal-pipeline log buffer."
  (interactive)
  (pop-to-buffer (get-buffer-create eid-signal-log-buffer-name)))

(defun eid/signal-stop ()
  "Stop the running signal-pipeline process after confirmation."
  (interactive)
  (unless (and eid-signal--process
               (process-live-p eid-signal--process))
    (user-error "No signal-pipeline process is running"))
  (when (yes-or-no-p "Stop signal-pipeline? ")
    (interrupt-process eid-signal--process)
    (setq eid-signal--status 'stopped
          eid-signal--finished-at (current-time)
          eid-signal--exit-status "interrupted")
    (eid-signal--stop-progress-timer)))

(defun eid-signal--candidate-directories ()
  "Return existing signal output directories."
  (seq-filter
   #'file-directory-p
   (mapcar (lambda (dir)
             (expand-file-name dir eid-signal-pipeline-directory))
           eid-signal-output-directories)))

(defun eid-signal--generated-posts ()
  "Return generated signal post files sorted newest first."
  (let (files)
    (dolist (dir (eid-signal--candidate-directories))
      (setq files
            (append (directory-files-recursively dir eid-signal-post-file-regexp)
                    files)))
    (sort (delete-dups files)
          (lambda (a b)
            (time-less-p (nth 5 (file-attributes b))
                         (nth 5 (file-attributes a)))))))

(defun eid-signal-latest-post ()
  "Return the newest generated signal-pipeline post."
  (or (car (eid-signal--generated-posts))
      (user-error "No generated post found under %s"
                  eid-signal-pipeline-directory)))

(defun eid/signal-open-latest-post ()
  "Open the newest generated signal-pipeline post."
  (interactive)
  (setq eid-signal--latest-post (eid-signal-latest-post))
  (find-file eid-signal--latest-post))

(defun eid-signal--selected-text-or-file ()
  "Return selected text, current buffer text, or latest post content."
  (cond
   ((use-region-p)
    (buffer-substring-no-properties (region-beginning) (region-end)))
   ((buffer-file-name)
    (buffer-substring-no-properties (point-min) (point-max)))
   (t
    (let ((file (or eid-signal--latest-post (eid-signal-latest-post))))
      (with-temp-buffer
        (insert-file-contents file)
        (buffer-string))))))

(defun eid/signal-draft-linkedin-post ()
  "Convert the selected/generated post into a LinkedIn draft buffer."
  (interactive)
  (if (fboundp 'eid-ai-request)
      (eid-ai-request
       "Signal LinkedIn Draft"
       (eid-ai--template
        "linkedin-refine.md"
        "Convert the supplied signal-pipeline output into a LinkedIn draft. Apply all public-writing confidentiality guardrails and avoid overclaiming.")
       (eid-signal--selected-text-or-file))
    (let ((buffer (get-buffer-create "*signal-linkedin-draft*")))
      (with-current-buffer buffer
        (erase-buffer)
        (insert (eid-signal--selected-text-or-file)))
      (pop-to-buffer buffer))))

(defun eid/signal-refine-with-ai ()
  "Refine the selected post or draft with the configured AI provider."
  (interactive)
  (eid-ai-request
   "Signal Refinement"
   "Refine this post for clarity, credibility, and public readability. Preserve the author's voice and remove confidential or unverifiable claims."
   (eid-signal--selected-text-or-file)))

(defun eid/signal-review-for-publication ()
  "Run a privacy/readiness review before publication."
  (interactive)
  (eid-ai-request
   "Signal Publication Review"
   (eid-ai--template
    "privacy-check.md"
    "Review this draft before public posting. Flag confidential detail, client names, private contact data, CV-only commercial metrics, internal project names, prompt leakage, and overclaiming.")
   (eid-signal--selected-text-or-file)))

(defun eid-signal--target-file (source)
  "Return a default website target path for SOURCE."
  (let* ((title (file-name-base source))
         (date (format-time-string "%Y-%m-%d"))
         (filename (concat date "-" (eid/slugify title) ".md")))
    (expand-file-name filename
                      (expand-file-name eid-website-content-directory
                                        eid-personal-website-directory))))

(defun eid-signal--git-output (directory &rest args)
  "Run git ARGS in DIRECTORY and return output as a string."
  (with-temp-buffer
    (let ((status (apply #'process-file "git" nil t nil "-C" directory args)))
      (if (zerop status)
          (string-trim (buffer-string))
        (format "git %s failed:\n%s" (string-join args " ") (buffer-string))))))

(defun eid-signal--git-change-summary (directory relative)
  "Return a concise git change summary for RELATIVE in DIRECTORY."
  (let ((status (eid-signal--git-output directory "status" "--short" "--" relative))
        (stat (eid-signal--git-output directory "diff" "--stat" "--" relative)))
    (string-join (seq-filter (lambda (part) (not (string-empty-p part)))
                             (list status stat))
                 "\n")))

(defun eid-signal--publication-summary (source target &optional diff)
  "Display publication summary for SOURCE, TARGET, and DIFF."
  (let ((buffer (get-buffer-create "*eid-signal-publication*")))
    (with-current-buffer buffer
      (erase-buffer)
      (insert "# Signal Publication Review\n\n")
      (insert "- Generated post: " source "\n")
      (insert "- Target website path: " target "\n")
      (insert "- Website repo: " eid-personal-website-directory "\n")
      (insert "- Local preview: " eid-website-preview-url "\n\n")
      (insert "## Diff Summary\n\n")
      (insert (or diff "Diff will be shown after the draft is copied.") "\n"))
    (pop-to-buffer buffer)))

(defun eid/signal-publish-to-website (source target)
  "Copy approved SOURCE into website TARGET and run the website build command.

This command asks for confirmation before copying and before running the build."
  (interactive
   (let* ((source (read-file-name "Generated post: "
                                  (or (and eid-signal--latest-post
                                           (file-name-directory eid-signal--latest-post))
                                      eid-signal-pipeline-directory)
                                  (or eid-signal--latest-post
                                      (ignore-errors (eid-signal-latest-post)))
                                  t))
          (target (read-file-name "Website target: "
                                  (expand-file-name eid-website-content-directory
                                                    eid-personal-website-directory)
                                  (eid-signal--target-file source))))
     (list source target)))
  (eid-signal--valid-directory eid-personal-website-directory)
  (eid-signal--publication-summary source target)
  (unless (yes-or-no-p "Copy this approved draft into the website repo? ")
    (user-error "Publication cancelled"))
  (make-directory (file-name-directory target) t)
  (copy-file source target t)
  (setq eid-signal--last-published-target target)
  (let* ((relative (file-relative-name target eid-personal-website-directory))
         (diff (eid-signal--git-change-summary eid-personal-website-directory
                                               relative)))
    (eid-signal--publication-summary source target diff)
    (when (yes-or-no-p "Run the configured website build command now? ")
      (let ((buffer (eid-signal--process-buffer "*eid-website-build*")))
        (pop-to-buffer buffer)
        (eid-signal--start-process
         "eid-website-build"
         buffer
         eid-personal-website-directory
         eid-website-build-command)))))

(defun eid/signal-preview-website ()
  "Start the website preview command and show the local preview URL."
  (interactive)
  (eid-signal--valid-directory eid-personal-website-directory)
  (let ((buffer (eid-signal--process-buffer "*eid-website-preview*")))
    (pop-to-buffer buffer)
    (eid-signal--start-process
     "eid-website-preview"
     buffer
     eid-personal-website-directory
     eid-website-preview-command)
    (message "Website preview starting: %s" eid-website-preview-url)))

(defun eid/signal-commit-website (message)
  "Show website diff and commit the last published target with MESSAGE."
  (interactive "sCommit message: ")
  (eid-signal--valid-directory eid-personal-website-directory)
  (let* ((target (or eid-signal--last-published-target
                     (read-file-name "Website file to stage: "
                                     eid-personal-website-directory nil t)))
         (relative (file-relative-name target eid-personal-website-directory))
         (diff (eid-signal--git-change-summary eid-personal-website-directory
                                               relative)))
    (with-current-buffer (get-buffer-create "*eid-website-diff*")
      (erase-buffer)
      (insert diff)
      (diff-mode)
      (pop-to-buffer (current-buffer)))
    (when (fboundp 'magit-status)
      (magit-status eid-personal-website-directory))
    (unless (yes-or-no-p (format "Stage and commit %s? " relative))
      (user-error "Website commit cancelled"))
    (eid-signal--git-output eid-personal-website-directory "add" "--" relative)
    (let ((commit-output
           (eid-signal--git-output eid-personal-website-directory
                                   "commit" "-m" message "--" relative)))
      (message "%s" commit-output))))

(defun eid/signal-copy-draft-to-clipboard ()
  "Copy the current draft buffer or region to the clipboard/kill ring."
  (interactive)
  (kill-new (eid-signal--selected-text-or-file))
  (message "Draft copied to kill ring"))

(defun eid-signal--post-body (text)
  "Strip the signal-pipeline metadata header from TEXT, returning the article body.
Header = leading `# ' lines then a dashed separator; the body follows it."
  (if (string-match "\n-\\{10,\\}\n" text)
      (string-trim (substring text (match-end 0)))
    (string-trim text)))

(defun eid-signal--extract-hashtags (body)
  "Return hashtag words (without the #) found in BODY, de-duplicated in order."
  (let (tags (start 0))
    (while (string-match "#\\([[:alnum:]_]+\\)" body start)
      (push (match-string 1 body) tags)
      (setq start (match-end 0)))
    (nreverse (delete-dups tags))))

(defun eid-signal--override-key (source)
  "Website post-overrides.json key for SOURCE (filename base minus the timestamp)."
  (replace-regexp-in-string "__[0-9]\\{8\\}-[0-9]\\{6\\}\\'" ""
                            (file-name-base source)))

(defun eid-signal--website-compile (command-list buffer-name)
  "Run COMMAND-LIST (program + args) in the website repo via `compile'."
  (let ((default-directory (file-name-as-directory eid-personal-website-directory))
        (compilation-buffer-name-function (lambda (&rest _) buffer-name)))
    (compile (mapconcat #'shell-quote-argument command-list " "))))

(defun eid/website-review-posts ()
  "Refresh the website's draft-post review list (npm run review:posts).
Writes data/signal-posts.review.json in the site; changes no public pages."
  (interactive)
  (eid-signal--valid-directory eid-personal-website-directory)
  (eid-signal--website-compile eid-website-review-command "*eid-website-review*"))

(defun eid-signal--post-at-point-or-prompt ()
  "Return the signal post file for the current org heading's :FILE: property
\(the LinkedIn posts in digest.org carry it), else prompt from recent posts."
  (let ((file (and (derived-mode-p 'org-mode)
                   (require 'org nil t)
                   (org-entry-get (point) "FILE" t))))
    (if (and file (file-readable-p file))
        file
      (completing-read "Post to prepare for the website: "
                       (eid-signal--generated-posts) nil t nil nil
                       (ignore-errors (eid-signal-latest-post))))))

(defun eid/signal-publish-linkedin-to-website (source)
  "Prepare a signal-pipeline post SOURCE for the personal website.

Called from a LinkedIn post heading in digest.org, SOURCE is taken from the
heading's :FILE: property; otherwise you are prompted.  The site only publishes
posts that have a curated, PUBLIC-SAFE entry in data/post-overrides.json.  This
puts a ready-to-paste override entry (title/slug/tags/body from the post) on the
kill ring and opens post-overrides.json — yank it in, make it public-safe, then
publish with \\[eid/website-publish-posts].  Nothing goes live from here."
  (interactive (list (eid-signal--post-at-point-or-prompt)))
  (eid-signal--valid-directory eid-personal-website-directory)
  (require 'json)
  (let* ((raw (with-temp-buffer (insert-file-contents source) (buffer-string)))
         (body (eid-signal--post-body raw))
         (key (eid-signal--override-key source))
         (title (truncate-string-to-width (car (split-string body "\n" t)) 80))
         (tags (eid-signal--extract-hashtags body))
         (entry (format
                 "  %s: {\n    \"title\": %s,\n    \"slug\": %s,\n    \"excerpt\": \"\",\n    \"tags\": %s,\n    \"body\": %s\n  },"
                 (json-encode-string key)
                 (json-encode-string title)
                 (json-encode-string (eid/slugify title))
                 (json-encode tags)
                 (json-encode-string body))))
    (kill-new entry)
    (find-file (expand-file-name "data/post-overrides.json"
                                 eid-personal-website-directory))
    (message "Override entry on the kill ring — yank it in, make it public-safe, then M-x eid/website-publish-posts")))

(defun eid/website-publish-posts ()
  "Publish curated website posts (npm run publish:posts) after confirmation,
then open Magit on the website repo so you can review, commit, and push."
  (interactive)
  (eid-signal--valid-directory eid-personal-website-directory)
  (unless (yes-or-no-p "Publish curated posts into the website now? ")
    (user-error "Publish cancelled"))
  (eid-signal--website-compile eid-website-publish-command "*eid-website-publish*")
  (when (fboundp 'magit-status)
    (magit-status eid-personal-website-directory)))

(defun eid-signal-dispatch ()
  "Dispatch signal-pipeline and publishing commands."
  (interactive)
  (let* ((choices '(("run pipeline" . eid/signal-run)
                    ("progress" . eid/signal-progress)
                    ("show log" . eid/signal-show-log)
                    ("stop pipeline" . eid/signal-stop)
                    ("open latest post" . eid/signal-open-latest-post)
                    ("draft LinkedIn post" . eid/signal-draft-linkedin-post)
                    ("refine with AI" . eid/signal-refine-with-ai)
                    ("publication review" . eid/signal-review-for-publication)
                    ("website: review drafts" . eid/website-review-posts)
                    ("website: prepare post (curate override)" . eid/signal-publish-linkedin-to-website)
                    ("website: publish curated" . eid/website-publish-posts)
                    ("preview website" . eid/signal-preview-website)
                    ("commit website" . eid/signal-commit-website)
                    ("copy draft" . eid/signal-copy-draft-to-clipboard)))
         (choice (completing-read "Signal command: " (mapcar #'car choices) nil t)))
    (call-interactively (cdr (assoc choice choices)))))

(defun eid-signal-register-leader-keys ()
  "Register signal leader bindings."
  (interactive)
  (eid/leader-set-key
   "sr" #'eid/signal-run
   "ss" #'eid/signal-progress
   "so" #'eid/signal-show-log
   "sX" #'eid/signal-stop
   "sl" #'eid/signal-open-latest-post
   "sd" #'eid/signal-draft-linkedin-post
   "sa" #'eid/signal-refine-with-ai
   "sp" #'eid/signal-review-for-publication
   "sw" #'eid/signal-publish-linkedin-to-website
   "sR" #'eid/website-review-posts
   "sP" #'eid/website-publish-posts
   "sv" #'eid/signal-preview-website
   "sc" #'eid/signal-commit-website
   "sy" #'eid/signal-copy-draft-to-clipboard
   "sD" #'eid-signal-dispatch))

(provide 'eid-signal)
;;; eid-signal.el ends here
