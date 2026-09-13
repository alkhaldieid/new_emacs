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
(declare-function evil-window-right "evil-commands" (&optional count))
(declare-function evil-window-left "evil-commands" (&optional count))
(declare-function evil-window-up "evil-commands" (&optional count))
(declare-function evil-window-down "evil-commands" (&optional count))
(declare-function evil-window-move-far-right "evil-commands" ())
(declare-function evil-window-move-far-left "evil-commands" ())
(declare-function evil-window-delete "evil-commands" (&optional window))
(declare-function evil-window-vsplit "evil-commands" (&optional count file))
(declare-function evil-window-split "evil-commands" (&optional count file))
(declare-function evil-window-increase-width "evil-commands" (&optional count))
(declare-function evil-window-decrease-width "evil-commands" (&optional count))
(declare-function evil-switch-to-windows-last-buffer "evil-commands" ())
(declare-function consult-buffer "consult" (&optional sources))
(declare-function ibuffer "ibuffer"
                  (&optional other-window-p name qualifiers noselect shrink filter-groups formats))
(declare-function eyebrowse-switch-to-window-config-1 "eyebrowse" ())
(declare-function eyebrowse-switch-to-window-config-2 "eyebrowse" ())
(declare-function eyebrowse-switch-to-window-config-3 "eyebrowse" ())
(declare-function eyebrowse-switch-to-window-config-4 "eyebrowse" ())
(declare-function eyebrowse-switch-to-window-config-5 "eyebrowse" ())
(declare-function eyebrowse-switch-to-window-config-6 "eyebrowse" ())
(declare-function eyebrowse-switch-to-window-config-7 "eyebrowse" ())
(declare-function eyebrowse-switch-to-window-config-8 "eyebrowse" ())
(declare-function eyebrowse-switch-to-window-config-9 "eyebrowse" ())

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

(defcustom eid-leader-job-digest-path
  (expand-file-name "skills/pipeline/output/digest.org"
                    (or (getenv "OPENCLAW_WORKSPACE")
                        "~/.openclaw/workspace"))
  "Canonical path to the daily job digest opened by `SPC f j'."
  :type 'file
  :group 'eid-leader)

(defun eid/open-job-digest ()
  "Open the daily job digest (skills/pipeline/output/digest.org)."
  (interactive)
  (let ((path (expand-file-name eid-leader-job-digest-path)))
    (if (file-exists-p path)
        (find-file path)
      (message "Job digest not found at %s — run `node skills/pipeline/scripts/digest.js' first."
               path))))

(defun eid/leader-register-core ()
  "Register core Vim-style leader bindings."
  (interactive)
  (eid/leader-label "a" "AI")
  (eid/leader-label "f" "files / jobs")
  (eid/leader-label "r" "RSS / intake")
  (eid/leader-label "s" "signal / publish")
  (eid/leader-label "n" "notes")
  (eid/leader-label "b" "buffer")
  (eid/leader-label "c" "citations")
  (eid/leader-label "p" "projects")
  (eid/leader-label "g" "git")
  (eid/leader-label "e" "export")
  (eid/leader-label "t" "tests / tools")
  (eid/leader-label "w" "windows")
  (eid/leader-set-key
   "<SPC>" #'execute-extended-command
   "fs" #'save-buffer
   "ff" #'find-file
   "fj" #'eid/open-job-digest
   ;; Core set mirrors the old README.org leader map.
   "bb" #'consult-buffer
   "bd" #'kill-buffer
   "bp" #'previous-buffer
   "bn" #'next-buffer
   "bi" #'ibuffer
   ;; Extra Vim-ish conveniences (not in the old config, harmless to keep).
   "bl" #'evil-switch-to-windows-last-buffer
   "bs" #'scratch-buffer
   "br" #'revert-buffer
   "bm" #'view-echo-area-messages
   "wl" #'evil-window-right
   "wL" #'evil-window-move-far-right
   "wh" #'evil-window-left
   "wH" #'evil-window-move-far-left
   "wk" #'evil-window-up
   "wj" #'evil-window-down
   "wd" #'evil-window-delete
   "wv" #'evil-window-vsplit
   "ws" #'evil-window-split
   "wm" #'delete-other-windows
   "w=" #'evil-window-increase-width
   "w-" #'evil-window-decrease-width
   "1" #'eyebrowse-switch-to-window-config-1
   "2" #'eyebrowse-switch-to-window-config-2
   "3" #'eyebrowse-switch-to-window-config-3
   "4" #'eyebrowse-switch-to-window-config-4
   "5" #'eyebrowse-switch-to-window-config-5
   "6" #'eyebrowse-switch-to-window-config-6
   "7" #'eyebrowse-switch-to-window-config-7
   "8" #'eyebrowse-switch-to-window-config-8
   "9" #'eyebrowse-switch-to-window-config-9
   "gg" #'magit-status
   "ee" #'org-export-dispatch
   "qq" #'save-buffers-kill-emacs))

(provide 'eid-leader)
;;; eid-leader.el ends here
