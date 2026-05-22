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

(defcustom eid-website-content-directory "content/posts"
  "Relative directory in `eid-personal-website-directory' for article drafts."
  :type 'string
  :group 'eid-signal)

(defcustom eid-website-build-command '("make" "build")
  "Website command used after a draft is copied into the website repo."
  :type '(repeat string)
  :group 'eid-signal)

(defcustom eid-website-preview-command '("make" "preview")
  "Website command used to start a local preview server."
  :type '(repeat string)
  :group 'eid-signal)

(defcustom eid-website-preview-url "http://localhost:1313"
  "Local website preview URL."
  :type 'string
  :group 'eid-signal)

(defvar eid-signal--latest-post nil
  "Most recent signal post opened or published.")

(defvar eid-signal--last-published-target nil
  "Last website target created by `eid/signal-publish-to-website'.")

(defun eid-signal--valid-directory (directory)
  "Return DIRECTORY when it exists, otherwise signal a user error."
  (unless (file-directory-p directory)
    (user-error "Directory does not exist: %s" directory))
  directory)

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
         (with-current-buffer (process-buffer process)
           (let ((inhibit-read-only t))
             (goto-char (point-max))
             (insert (format "\nProcess %s %s" (process-name process) event)))))))))

(defun eid/signal-run ()
  "Run signal-pipeline asynchronously from Emacs."
  (interactive)
  (let* ((directory (eid-signal--valid-directory eid-signal-pipeline-directory))
         (buffer (eid-signal--process-buffer "*signal-pipeline*")))
    (pop-to-buffer buffer)
    (eid-signal--start-process
     "signal-pipeline" buffer directory eid-signal-command)
    (message "signal-pipeline started in %s" directory)))

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

(defun eid-signal-dispatch ()
  "Dispatch signal-pipeline and publishing commands."
  (interactive)
  (let* ((choices '(("run pipeline" . eid/signal-run)
                    ("open latest post" . eid/signal-open-latest-post)
                    ("draft LinkedIn post" . eid/signal-draft-linkedin-post)
                    ("refine with AI" . eid/signal-refine-with-ai)
                    ("publication review" . eid/signal-review-for-publication)
                    ("publish to website" . eid/signal-publish-to-website)
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
   "sl" #'eid/signal-open-latest-post
   "sd" #'eid/signal-draft-linkedin-post
   "sa" #'eid/signal-refine-with-ai
   "sp" #'eid/signal-review-for-publication
   "sw" #'eid/signal-publish-to-website
   "sv" #'eid/signal-preview-website
   "sc" #'eid/signal-commit-website
   "sy" #'eid/signal-copy-draft-to-clipboard
   "sD" #'eid-signal-dispatch))

(provide 'eid-signal)
;;; eid-signal.el ends here
