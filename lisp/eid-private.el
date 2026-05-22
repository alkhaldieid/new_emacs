;;; eid-private.el --- Private submodule integration -*- lexical-binding: t; -*-

;;; Commentary:
;; Public loader for the optional private/ submodule.  The submodule itself is
;; intended for personal paths, machine-specific commands, private snippets, and
;; work-in-progress material that should not live in the public repository.

;;; Code:

(require 'eid-platform)

(defgroup eid-private nil
  "Optional private configuration submodule."
  :group 'eid
  :prefix "eid-private-")

(defcustom eid-private-config-directory
  (expand-file-name "private/" (or (bound-and-true-p eid-config-root)
                                   user-emacs-directory))
  "Directory for the private configuration submodule."
  :type 'directory
  :group 'eid-private)

(defcustom eid-private-config-files
  '("init.el" "personal.el" "personal.el.gpg")
  "Private config files loaded from `eid-private-config-directory'."
  :type '(repeat string)
  :group 'eid-private)

(defcustom eid-private-snippets-directory
  (expand-file-name "snippets/" eid-private-config-directory)
  "Private Yasnippet directory owned by the private submodule."
  :type 'directory
  :group 'eid-private)

(defcustom eid-private-extra-snippet-directories nil
  "Additional private snippet directories.

Use this for external personal config switchers such as ~/.ihsec, while keeping
those paths out of the public repository."
  :type '(repeat directory)
  :group 'eid-private)

(defvar yas-snippet-dirs)

(defun eid-private-config-file-paths ()
  "Return expanded private config file paths."
  (mapcar (lambda (file)
            (expand-file-name file eid-private-config-directory))
          eid-private-config-files))

(defun eid-private-load-config ()
  "Load private config files when the submodule is present."
  (when (file-directory-p eid-private-config-directory)
    (dolist (file (eid-private-config-file-paths))
      (when (file-exists-p file)
        (load file nil 'nomessage)))))

(defun eid-private-configure-snippets ()
  "Add private snippets to `yas-snippet-dirs' when present."
  (dolist (directory (cons eid-private-snippets-directory
                           eid-private-extra-snippet-directories))
    (when (file-directory-p directory)
      (add-to-list 'yas-snippet-dirs directory t))))

(provide 'eid-private)
;;; eid-private.el ends here
