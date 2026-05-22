;;; eid-rss.el --- RSS and research intake workflow -*- lexical-binding: t; -*-

;;; Commentary:
;; Elfeed-powered intake for papers, industry news, regulation, and sources that
;; should become research notes or signal-pipeline seeds.

;;; Code:

(require 'cl-lib)
(require 'subr-x)
(require 'eid-platform)
(require 'eid-leader)
(require 'eid-ai nil t)

(declare-function elfeed "elfeed" ())
(declare-function elfeed-update "elfeed" ())
(declare-function elfeed-search-set-filter "elfeed-search" (filter))
(declare-function elfeed-search-selected "elfeed-search" (&optional ignore-region))
(declare-function elfeed-entry-title "elfeed" (entry))
(declare-function elfeed-entry-link "elfeed" (entry))
(declare-function elfeed-entry-content "elfeed" (entry))
(declare-function elfeed-entry-date "elfeed" (entry))
(declare-function elfeed-entry-tags "elfeed" (entry))

(defvar elfeed-db-directory)
(defvar elfeed-enclosure-default-dir)
(defvar elfeed-feeds)
(defvar elfeed-show-entry)

(defgroup eid-rss nil
  "RSS intake settings."
  :group 'eid
  :prefix "eid-rss-")

(defcustom eid-rss-user-feeds nil
  "User-local Elfeed feeds appended to `eid-rss-default-feeds'."
  :type '(repeat sexp)
  :group 'eid-rss)

(defcustom eid-rss-default-feeds
  '(("https://rss.arxiv.org/rss/cs.AI" ai-research academic-papers)
    ("https://rss.arxiv.org/rss/cs.CL" ai-research llm-agents academic-papers)
    ("https://rss.arxiv.org/rss/cs.IR" rag retrieval academic-papers)
    ("https://huggingface.co/blog/feed.xml" ai-research llm-agents)
    ("https://simonwillison.net/atom/everything/" ai-research llm-agents)
    ("https://www.iaisweb.org/rss/news" insurance regulation-compliance)
    ("https://www.sama.gov.sa/en-US/News/rss.aspx" saudi-gulf-technology regulation-compliance))
  "Default public feeds with example research tags.

Users should customize this list or set `eid-rss-user-feeds' in a local file."
  :type '(repeat sexp)
  :group 'eid-rss)

(defcustom eid-rss-signal-seed-directory
  (expand-file-name "seeds/" eid-signal-pipeline-directory)
  "Directory where RSS items can be saved as signal-pipeline seed notes."
  :type 'directory
  :group 'eid-rss)

(defcustom eid-rss-note-template
  "#+title: %s\n#+date: %s\n#+filetags: :rss:%s:\n\n- Source: %s\n- Link: %s\n\n* Summary\n\n* Notes\n\n%s\n"
  "Org template used when saving RSS entries to notes."
  :type 'string
  :group 'eid-rss)

(defun eid-rss-setup ()
  "Configure Elfeed with defaults and local overrides."
  (setq elfeed-db-directory (file-name-directory (expand-file-name eid-rss-database-file))
        elfeed-enclosure-default-dir (expand-file-name "enclosures/" eid-rss-directory))
  (make-directory elfeed-db-directory t)
  (make-directory elfeed-enclosure-default-dir t)
  (when (file-exists-p eid-rss-feeds-file)
    (load eid-rss-feeds-file nil 'nomessage))
  (setq elfeed-feeds (append eid-rss-default-feeds eid-rss-user-feeds)))

(defun eid-rss-open ()
  "Open the RSS dashboard."
  (interactive)
  (unless (fboundp 'elfeed)
    (user-error "Install/load elfeed before opening RSS"))
  (elfeed))

(defun eid-rss-update ()
  "Update RSS feeds."
  (interactive)
  (unless (fboundp 'elfeed-update)
    (user-error "Install/load elfeed before updating RSS"))
  (elfeed-update))

(defun eid-rss-search (filter)
  "Open Elfeed and apply FILTER."
  (interactive "sElfeed search filter: ")
  (eid-rss-open)
  (when (fboundp 'elfeed-search-set-filter)
    (elfeed-search-set-filter filter)))

(defun eid-rss--entry ()
  "Return the current Elfeed entry from search or show buffers."
  (cond
   ((bound-and-true-p elfeed-show-entry) elfeed-show-entry)
   ((fboundp 'elfeed-search-selected)
    (car (elfeed-search-selected)))
   (t nil)))

(defun eid-rss--entry-title (entry)
  "Return ENTRY title."
  (or (and (fboundp 'elfeed-entry-title) (elfeed-entry-title entry)) "Untitled"))

(defun eid-rss--entry-link (entry)
  "Return ENTRY link."
  (or (and (fboundp 'elfeed-entry-link) (elfeed-entry-link entry)) ""))

(defun eid-rss--entry-content (entry)
  "Return ENTRY content as plain text."
  (let ((content (and (fboundp 'elfeed-entry-content)
                      (elfeed-entry-content entry))))
    (cond
     ((stringp content) content)
     ((consp content) (or (car content) ""))
     (t ""))))

(defun eid-rss--entry-tags (entry)
  "Return ENTRY tags as an Org tag string."
  (if (fboundp 'elfeed-entry-tags)
      (mapconcat (lambda (tag) (replace-regexp-in-string "-" "_" (symbol-name tag)))
                 (elfeed-entry-tags entry)
                 ":")
    ""))

(defun eid-rss--entry-date (entry)
  "Return ENTRY date as YYYY-MM-DD."
  (format-time-string
   "%Y-%m-%d"
   (seconds-to-time (or (and (fboundp 'elfeed-entry-date)
                             (elfeed-entry-date entry))
                        (float-time)))))

(defun eid-rss--write-entry-note (entry directory)
  "Write ENTRY to DIRECTORY and return the new file path."
  (make-directory directory t)
  (let* ((title (eid-rss--entry-title entry))
         (date (eid-rss--entry-date entry))
         (slug (eid/slugify title))
         (file (expand-file-name (format "%s-%s.org" date slug) directory))
         (tags (eid-rss--entry-tags entry))
         (link (eid-rss--entry-link entry))
         (content (eid-rss--entry-content entry)))
    (with-temp-file file
      (insert (format eid-rss-note-template title date tags title link content)))
    file))

(defun eid-rss-save-item-to-notes ()
  "Save the current RSS item as an Org research note."
  (interactive)
  (let ((entry (or (eid-rss--entry) (user-error "No Elfeed entry at point"))))
    (find-file (eid-rss--write-entry-note entry eid-notes-directory))))

(defun eid-rss-create-signal-seed ()
  "Create a signal-pipeline seed note from the current RSS item."
  (interactive)
  (let ((entry (or (eid-rss--entry) (user-error "No Elfeed entry at point"))))
    (find-file (eid-rss--write-entry-note entry eid-rss-signal-seed-directory))))

(defun eid-rss-ai-summarize-item ()
  "Summarize the current RSS item with AI after explicit confirmation."
  (interactive)
  (let ((entry (or (eid-rss--entry) (user-error "No Elfeed entry at point"))))
    (unless (yes-or-no-p "Send this RSS item to the configured AI provider? ")
      (user-error "RSS AI summary cancelled"))
    (eid-ai-request
     "RSS Summary"
     "Summarize this RSS item for a research intake queue. Extract why it matters, what claims need verification, and whether it could become a signal-pipeline seed."
     (format "Title: %s\nLink: %s\n\n%s"
             (eid-rss--entry-title entry)
             (eid-rss--entry-link entry)
             (eid-rss--entry-content entry)))))

(defun eid-rss-generate-commentary-note ()
  "Generate a draft commentary note from the current RSS item."
  (interactive)
  (let ((entry (or (eid-rss--entry) (user-error "No Elfeed entry at point"))))
    (unless (yes-or-no-p "Send this RSS item to AI for commentary drafting? ")
      (user-error "RSS commentary cancelled"))
    (eid-ai-request
     "RSS Commentary"
     "Draft a concise commentary note from this RSS item. Include thesis, why it matters, evidence needed, and public-posting risks."
     (format "Title: %s\nLink: %s\n\n%s"
             (eid-rss--entry-title entry)
             (eid-rss--entry-link entry)
             (eid-rss--entry-content entry)))))

(defun eid-rss-dispatch ()
  "Dispatch RSS intake commands."
  (interactive)
  (let* ((choices '(("open" . eid-rss-open)
                    ("update" . eid-rss-update)
                    ("search" . eid-rss-search)
                    ("save to notes" . eid-rss-save-item-to-notes)
                    ("signal seed" . eid-rss-create-signal-seed)
                    ("AI summarize" . eid-rss-ai-summarize-item)
                    ("commentary note" . eid-rss-generate-commentary-note)))
         (choice (completing-read "RSS command: " (mapcar #'car choices) nil t)))
    (call-interactively (cdr (assoc choice choices)))))

(defun eid-rss-register-leader-keys ()
  "Register RSS leader bindings."
  (interactive)
  (eid/leader-set-key
   "rr" #'eid-rss-open
   "ru" #'eid-rss-update
   "rs" #'eid-rss-search
   "rn" #'eid-rss-save-item-to-notes
   "rg" #'eid-rss-create-signal-seed
   "ra" #'eid-rss-ai-summarize-item
   "rd" #'eid-rss-dispatch))

(provide 'eid-rss)
;;; eid-rss.el ends here
