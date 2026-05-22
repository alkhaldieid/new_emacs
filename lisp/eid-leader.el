;;; eid-leader.el --- Vim-style leader key architecture -*- lexical-binding: t; -*-

;;; Commentary:
;; The original configuration used evil-leader with SPC as the top-level key.
;; This module keeps that philosophy and adds a small registration API so new
;; research workflows stay grouped and discoverable.

;;; Code:

(require 'cl-lib)
(require 'subr-x)

(declare-function evil-leader/set-key "evil-leader" (&rest bindings))
(declare-function which-key-add-key-based-replacements "which-key" (&rest replacements))
(declare-function magit-status "magit-status" (&optional directory))
(declare-function org-export-dispatch "ox" (&optional arg))

(defgroup eid-leader nil
  "Leader-key architecture for Eid Research Emacs."
  :group 'eid
  :prefix "eid-leader-")

(defcustom eid-leader-key "<SPC>"
  "Leader key used in Evil normal/visual states."
  :type 'string
  :group 'eid-leader)

(defvar eid-leader--pending-bindings nil
  "Bindings registered before evil-leader is loaded.")

(defvar eid-leader--labels nil
  "Which-key labels for leader groups.")

(defvar eid-leader-fallback-map (make-sparse-keymap)
  "Fallback leader keymap for sessions without evil-leader.")

(define-key global-map (kbd "C-c SPC") eid-leader-fallback-map)

(defun eid-leader--fallback-key (key)
  "Convert compact leader KEY such as \"ar\" to a fallback key sequence."
  (cond
   ((string-match-p "\\`<.*>\\'" key) (substring key 1 -1))
   ((string-match-p " " key) key)
   (t (mapconcat #'char-to-string key " "))))

(defun eid/leader-set-key (&rest bindings)
  "Register compact leader BINDINGS.

BINDINGS follows `evil-leader/set-key': KEY COMMAND KEY COMMAND...
When evil-leader is unavailable, commands are also available under `C-c SPC'."
  (setq eid-leader--pending-bindings
        (append eid-leader--pending-bindings bindings))
  (while bindings
    (let ((key (pop bindings))
          (command (pop bindings)))
      (when command
        (define-key eid-leader-fallback-map
                    (kbd (eid-leader--fallback-key key))
                    command)
        (when (fboundp 'evil-leader/set-key)
          (evil-leader/set-key key command))))))

(defun eid/leader-apply-pending ()
  "Apply pending leader bindings to evil-leader."
  (when (fboundp 'evil-leader/set-key)
    (apply #'evil-leader/set-key eid-leader--pending-bindings)))

(defun eid/leader-label (key label)
  "Register a which-key LABEL for leader KEY."
  (push (cons key label) eid-leader--labels))

(defun eid/leader-register-which-key-labels ()
  "Install which-key labels for all registered leader groups."
  (when (fboundp 'which-key-add-key-based-replacements)
    (dolist (entry eid-leader--labels)
      (which-key-add-key-based-replacements
       (format "SPC %s" (eid-leader--fallback-key (car entry)))
       (cdr entry)))))

(defun eid/leader-register-core ()
  "Register core Vim-style leader bindings."
  (interactive)
  (eid/leader-label "a" "AI")
  (eid/leader-label "r" "RSS / intake")
  (eid/leader-label "s" "signal / publish")
  (eid/leader-label "n" "notes")
  (eid/leader-label "b" "bibliography")
  (eid/leader-label "p" "projects")
  (eid/leader-label "g" "git")
  (eid/leader-label "e" "export")
  (eid/leader-label "t" "tests / tools")
  (eid/leader-set-key
   "<SPC>" #'execute-extended-command
   "fs" #'save-buffer
   "ff" #'find-file
   "bb" #'switch-to-buffer
   "bd" #'kill-current-buffer
   "gg" #'magit-status
   "ee" #'org-export-dispatch
   "qq" #'save-buffers-kill-emacs))

(provide 'eid-leader)
;;; eid-leader.el ends here
