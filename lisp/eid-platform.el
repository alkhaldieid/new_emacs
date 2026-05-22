;;; eid-platform.el --- Cross-platform path and executable helpers -*- lexical-binding: t; -*-

;;; Commentary:
;; Shared customization and platform detection for the Eid Research Emacs
;; distribution.  This file deliberately avoids external packages so it can be
;; byte-compiled and tested in CI with `emacs -Q'.

;;; Code:

(require 'cl-lib)
(require 'subr-x)

(defgroup eid nil
  "Cross-platform research Emacs configuration."
  :group 'convenience
  :prefix "eid-")

(defvar explicit-shell-file-name)
(defvar python-shell-interpreter)

(defcustom eid-research-directory (expand-file-name "~/Research/")
  "Root directory for research material."
  :type 'directory
  :group 'eid)

(defcustom eid-bibliography-file
  (expand-file-name "bibliography/references.bib" eid-research-directory)
  "Default BibTeX bibliography file."
  :type 'file
  :group 'eid)

(defcustom eid-notes-directory
  (expand-file-name "notes/" eid-research-directory)
  "Directory for Org, Denote, or org-roam notes."
  :type 'directory
  :group 'eid)

(defcustom eid-projects-directory (expand-file-name "~/Projects/")
  "Directory containing source and writing projects."
  :type 'directory
  :group 'eid)

(defcustom eid-rss-directory
  (expand-file-name "elfeed/" user-emacs-directory)
  "Directory used for RSS database and support files."
  :type 'directory
  :group 'eid)

(defcustom eid-rss-database-file
  (expand-file-name "elfeed-db" eid-rss-directory)
  "Path to the Elfeed database."
  :type 'file
  :group 'eid)

(defcustom eid-rss-feeds-file
  (expand-file-name "feeds.el" eid-rss-directory)
  "Optional local Elfeed feed list.

This file may set `eid-rss-user-feeds' or `elfeed-feeds'."
  :type 'file
  :group 'eid)

(defcustom eid-signal-pipeline-directory (expand-file-name "~/signal-pipeline/")
  "Local checkout of the signal-pipeline repository."
  :type 'directory
  :group 'eid)

(defcustom eid-personal-website-directory
  (expand-file-name "~/alkhaldieid.github.io/")
  "Local checkout of the personal website repository."
  :type 'directory
  :group 'eid)

(defcustom eid-personal-website-repository
  "git@github.com:alkhaldieid/alkhaldieid.github.io.git"
  "Remote repository for the personal website."
  :type 'string
  :group 'eid)

(defcustom eid-preferred-python-executable
  (or (executable-find "python3")
      (executable-find "python")
      "python3")
  "Preferred Python executable for shells, Org Babel, and Python tooling."
  :type 'string
  :group 'eid)

(defcustom eid-preferred-shell
  (or (getenv "SHELL")
      (executable-find "zsh")
      (executable-find "bash")
      (executable-find "sh")
      "/bin/sh")
  "Preferred shell for subprocesses."
  :type 'string
  :group 'eid)

(defcustom eid-extra-exec-paths
  '("~/.local/bin" "~/bin" "/opt/homebrew/bin" "/opt/homebrew/sbin"
    "/usr/local/bin" "/usr/local/sbin" "/usr/bin" "/bin")
  "Platform-aware executable search paths appended when present."
  :type '(repeat directory)
  :group 'eid)

(defun eid/platform-macos-p ()
  "Return non-nil when running on macOS."
  (eq system-type 'darwin))

(defun eid/platform-linux-p ()
  "Return non-nil when running on GNU/Linux."
  (eq system-type 'gnu/linux))

(defun eid/expand-path (path &optional base)
  "Expand PATH relative to BASE.

Nil PATH stays nil.  The result is normalized with `expand-file-name'."
  (when path
    (expand-file-name path (or base default-directory))))

(defun eid/file-directory (path)
  "Return PATH as an expanded directory name."
  (file-name-as-directory (eid/expand-path path)))

(defun eid/executable-find (&rest names)
  "Return the first executable found in NAMES."
  (cl-some #'executable-find names))

(defun eid/platform-open-command ()
  "Return the best available command for opening files or URLs."
  (cond
   ((eid/platform-macos-p) (or (executable-find "open") "open"))
   ((eid/platform-linux-p) (or (executable-find "xdg-open") "xdg-open"))
   (t (or (executable-find "open") (executable-find "xdg-open")))))

(defun eid/platform-add-exec-paths ()
  "Add useful Homebrew, local, and system directories to `exec-path'."
  (dolist (path eid-extra-exec-paths)
    (let ((expanded (eid/file-directory path)))
      (when (file-directory-p expanded)
        (add-to-list 'exec-path expanded)
        (setenv "PATH" (concat expanded path-separator (getenv "PATH")))))))

(defun eid/platform-ensure-directories ()
  "Create shared user directories when missing."
  (dolist (dir (list eid-research-directory
                    eid-notes-directory
                    eid-projects-directory
                    eid-rss-directory))
    (make-directory dir t)))

(defun eid/platform-apply-defaults ()
  "Apply safe platform defaults for shell, Python, and paths."
  (eid/platform-add-exec-paths)
  (setq shell-file-name eid-preferred-shell
        explicit-shell-file-name eid-preferred-shell
        python-shell-interpreter eid-preferred-python-executable)
  (when (boundp 'org-directory)
    (setq org-directory eid-notes-directory))
  (eid/platform-ensure-directories))

(defun eid/path-inside-p (path parent)
  "Return non-nil when PATH is inside PARENT after expansion."
  (let ((file (file-truename (eid/expand-path path)))
        (root (file-name-as-directory (file-truename (eid/expand-path parent)))))
    (string-prefix-p root file)))

(defun eid/slugify (string)
  "Convert STRING into a conservative file-name slug."
  (let* ((downcased (downcase (or string "")))
         (ascii-ish (replace-regexp-in-string "[^[:alnum:]]+" "-" downcased))
         (trimmed (string-trim ascii-ish "-+" "-+")))
    (if (string-empty-p trimmed) "untitled" trimmed)))

(provide 'eid-platform)
;;; eid-platform.el ends here
