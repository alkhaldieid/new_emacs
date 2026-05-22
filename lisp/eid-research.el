;;; eid-research.el --- Research writing defaults -*- lexical-binding: t; -*-

;;; Commentary:
;; Org, bibliography, notes, projects, export, and test helpers.  This module
;; keeps the old PhD-writing spirit while removing private absolute paths.

;;; Code:

(require 'subr-x)
(require 'seq)
(require 'eid-platform)
(require 'eid-leader)

(declare-function org-capture "org-capture" (&optional goto keys))
(declare-function org-roam-db-autosync-mode "org-roam" (&optional arg))
(declare-function org-roam-db-sync "org-roam" (&optional force))
(declare-function org-roam-node-find "org-roam" (&optional other-window initial-input filter-fn pred))
(declare-function org-roam-node-insert "org-roam" (&optional filter-fn))
(declare-function citar-insert-citation "citar" (&optional keys))
(declare-function citar-open "citar" (&optional keys))
(declare-function magit-status "magit-status" (&optional directory))
(declare-function org-export-dispatch "ox" (&optional arg))
(declare-function org-hugo-export-to-md "ox-hugo" (&optional async subtreep visible-only body-only ext-plist))
(declare-function projectile-switch-project "projectile" ())
(declare-function projectile-find-file "projectile" ())

(defvar citar-bibliography)
(defvar citar-notes-paths)
(defvar org-agenda-files)
(defvar org-cite-global-bibliography)
(defvar org-default-notes-file)
(defvar org-directory)
(defvar org-edit-src-content-indentation)
(defvar org-modules)
(defvar org-return-follows-link)
(defvar org-roam-directory)
(defvar org-roam-node-display-template)
(defvar org-todo-keywords)
(defvar org-treat-S-cursor-todo-selection-as-state-change)
(defvar org-use-fast-todo-selection)
(defvar undo-tree-history-directory-alist)

(defgroup eid-research nil
  "Research workflow settings."
  :group 'eid
  :prefix "eid-research-")

(defcustom eid-research-dashboard-file
  (expand-file-name "dashboard.org" eid-notes-directory)
  "Default research dashboard file."
  :type 'file
  :group 'eid-research)

(defcustom eid-research-agenda-files nil
  "Optional list of Org agenda files.

When nil, existing Org files under `eid-notes-directory' are used lightly."
  :type '(repeat file)
  :group 'eid-research)

(defun eid-research--existing-files (files)
  "Return existing FILES."
  (seq-filter #'file-exists-p files))

(defun eid-research-configure-org ()
  "Configure built-in Org for research writing."
  (setq org-directory eid-notes-directory
        org-default-notes-file (expand-file-name "inbox.org" eid-notes-directory)
        org-use-fast-todo-selection t
        org-treat-S-cursor-todo-selection-as-state-change nil
        org-edit-src-content-indentation 0
        org-return-follows-link t
        org-cite-global-bibliography
        (when (file-exists-p eid-bibliography-file)
          (list eid-bibliography-file))
        org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "IN-PROGRESS(p)" "|" "DONE(d)" "CANCELLED(c)")
          (sequence "PHONE" "MEETING" "EMAIL" "HOLD(h@/!)")))
  (setq org-agenda-files
        (or (eid-research--existing-files eid-research-agenda-files)
            (when (file-directory-p eid-notes-directory)
              (directory-files eid-notes-directory t "\\.org\\'"))))
  (add-to-list 'org-modules 'org-habit)
  (add-hook 'org-mode-hook #'visual-line-mode)
  (add-hook 'org-mode-hook #'flyspell-mode))

(defun eid-research-configure-citations ()
  "Configure citar and Org citation defaults."
  (when (boundp 'citar-bibliography)
    (setq citar-bibliography
          (when (file-exists-p eid-bibliography-file)
            (list eid-bibliography-file))))
  (when (boundp 'citar-notes-paths)
    (setq citar-notes-paths (list eid-notes-directory))))

(defun eid-research-configure-org-roam ()
  "Configure org-roam when installed."
  (setq org-roam-directory (file-truename eid-notes-directory)
        org-roam-node-display-template
        (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (when (fboundp 'org-roam-db-autosync-mode)
    (org-roam-db-autosync-mode 1)))

(defun eid-research-setup ()
  "Apply research defaults that are safe before optional packages load."
  (setq auto-save-file-name-transforms
        `((".*" ,(expand-file-name "auto-save-list/" user-emacs-directory) t))
        backup-directory-alist
        `(("." . ,(expand-file-name "backups/" user-emacs-directory)))
        undo-tree-history-directory-alist
        `(("." . ,(expand-file-name "undo-tree/" user-emacs-directory))))
  (dolist (dir (list (expand-file-name "auto-save-list/" user-emacs-directory)
                     (expand-file-name "backups/" user-emacs-directory)
                     (expand-file-name "undo-tree/" user-emacs-directory)))
    (make-directory dir t))
  (fset 'yes-or-no-p #'y-or-n-p)
  (setq vc-follow-symlinks t))

(defun eid/research-open-dashboard ()
  "Open the research dashboard."
  (interactive)
  (find-file eid-research-dashboard-file))

(defun eid/research-open-notes ()
  "Open `eid-notes-directory'."
  (interactive)
  (dired eid-notes-directory))

(defun eid/research-open-bibliography ()
  "Open `eid-bibliography-file'."
  (interactive)
  (find-file eid-bibliography-file))

(defun eid/research-capture-inbox ()
  "Capture a research inbox note."
  (interactive)
  (if (fboundp 'org-capture)
      (org-capture nil "i")
    (find-file (expand-file-name "inbox.org" eid-notes-directory))))

(defun eid/research-open-projects ()
  "Open the projects directory."
  (interactive)
  (dired eid-projects-directory))

(defun eid/research-run-tests ()
  "Run the repository ERT tests from Emacs."
  (interactive)
  (let ((default-directory (or (bound-and-true-p eid-config-root)
                               user-emacs-directory)))
    (compile "make test")))

(defun eid-research-register-leader-keys ()
  "Register research leader bindings."
  (interactive)
  (eid/leader-set-key
   "nd" #'eid/research-open-dashboard
   "nn" #'eid/research-open-notes
   "ni" #'eid/research-capture-inbox
   "nf" #'org-roam-node-find
   "nI" #'org-roam-node-insert
   "ns" #'org-roam-db-sync
   "bb" #'eid/research-open-bibliography
   "bi" #'citar-insert-citation
   "bo" #'citar-open
   "pp" #'projectile-switch-project
   "pf" #'projectile-find-file
   "pd" #'eid/research-open-projects
   "gs" #'magit-status
   "ee" #'org-export-dispatch
   "eh" #'org-hugo-export-to-md
   "tt" #'eid/research-run-tests))

(provide 'eid-research)
;;; eid-research.el ends here
