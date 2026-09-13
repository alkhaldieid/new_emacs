;;; eid-ui.el --- Visual defaults and theme -*- lexical-binding: t; -*-

;;; Commentary:
;; Visual polish for the research environment.  The default theme is intentionally
;; opinionated: dark, modern, readable, and a little cinematic.

;;; Code:

(defgroup eid-ui nil
  "UI and theme defaults."
  :group 'eid
  :prefix "eid-ui-")

(defcustom eid-ui-theme 'doom-tokyo-night
  "Default theme for Eid Research Emacs."
  :type 'symbol
  :group 'eid-ui)

(defcustom eid-ui-font-size 150
  "Default face height."
  :type 'integer
  :group 'eid-ui)

(defvar display-line-numbers-type)

(defun eid-ui-apply-frame-defaults ()
  "Apply calm, work-focused frame defaults."
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (global-display-line-numbers-mode 1)
  (setq display-line-numbers-type 'relative
        inhibit-startup-screen t
        initial-scratch-message "")
  (set-face-attribute 'default nil :height eid-ui-font-size))

(defun eid-ui-load-theme ()
  "Load `eid-ui-theme' safely."
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme eid-ui-theme t))

(provide 'eid-ui)
;;; eid-ui.el ends here
