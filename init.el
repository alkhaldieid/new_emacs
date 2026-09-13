;;; init.el --- Eid Research Emacs entry point -*- lexical-binding: t; -*-

;;; Commentary:
;; Cross-platform, Vim-first research Emacs for researchers and technical
;; writers.  The old literate README.org remains in the repository as a useful
;; historical reference, but this file is the supported default entry point.

;;; Code:

(setq package-enable-at-startup nil)

(defvar eid-config-root
  (file-name-directory (or load-file-name buffer-file-name))
  "Root directory for this Emacs configuration.")

(add-to-list 'load-path (expand-file-name "lisp" eid-config-root))

(declare-function straight-use-package "straight" (package))
(defvar straight-use-package-by-default)

(require 'eid-platform)
(require 'eid-private)
(require 'eid-ui)
(require 'eid-leader)
(require 'eid-research)
(require 'eid-ai)
(require 'eid-rss)
(require 'eid-signal)

(defcustom eid-load-legacy-literate-config nil
  "When non-nil, load the legacy README.org after the modular config.

This is off by default because the old literate configuration contains
historical machine-specific assumptions.  Prefer moving reusable settings into
`lisp/' modules, a local file, or the private submodule."
  :type 'boolean
  :group 'eid)

(defcustom eid-local-config-files
  (list (expand-file-name "local.el" user-emacs-directory)
        (expand-file-name "local.el.gpg" user-emacs-directory)
        (expand-file-name "eid-local.el" user-emacs-directory)
        (expand-file-name ".eid-local.el" eid-config-root))
  "User-local configuration files loaded after the shared configuration.

Use these files for private paths, local package choices, and machine-specific
overrides.  They are intentionally ignored by git."
  :type '(repeat file)
  :group 'eid)

(defun eid/bootstrap-straight ()
  "Bootstrap straight.el without assuming a platform-specific shell."
  (defvar bootstrap-version)
  (let ((bootstrap-file
         (expand-file-name "straight/repos/straight.el/bootstrap.el"
                           user-emacs-directory))
        (bootstrap-version 6))
    (unless (file-exists-p bootstrap-file)
      (with-current-buffer
          (url-retrieve-synchronously
           "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
           'silent 'inhibit-cookies)
        (goto-char (point-max))
        (eval-print-last-sexp)))
    (load bootstrap-file nil 'nomessage)))

(defun eid/load-local-configs ()
  "Load user-local config files from `eid-local-config-files'."
  (dolist (file eid-local-config-files)
    (when (file-exists-p file)
      (load file nil 'nomessage))))

(eid-private-load-config)
(eid/load-local-configs)
(eid/platform-apply-defaults)
(eid/bootstrap-straight)
(straight-use-package 'use-package)
(require 'use-package)

(setq straight-use-package-by-default t
      use-package-always-defer t)

(eid-ui-apply-frame-defaults)

(defmacro eid/use-package (&rest args)
  "Evaluate a use-package declaration ARGS at runtime.

This keeps byte compilation independent from optional external packages while
still using regular use-package declarations after straight.el is bootstrapped."
  `(eval '(use-package ,@args)))

(eid/use-package org
  :defer t
  :init
  (eid-research-configure-org))

(eid/use-package org-superstar
  :after org
  :hook (org-mode . org-superstar-mode))

(eid/use-package evil-org
  :after (evil org)
  :hook (org-mode . evil-org-mode)
  :config
  ;; Vim-style motions/text-objects in Org: gj/gk, ]]/[[ heading motions,
  ;; heading/list text objects, etc.  Keeps the setup's Vim-first principle.
  (evil-org-set-key-theme
   '(navigation insert textobjects additional calendar))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(eid/use-package evil
  :demand t
  :init
  (setq evil-want-keybinding nil
        evil-want-C-i-jump nil
        evil-undo-system 'undo-tree)
  :config
  (evil-mode 1))

(eid/use-package evil-leader
  :after evil
  :demand t
  :config
  (global-evil-leader-mode 1)
  (evil-leader/set-leader eid-leader-key)
  (eid/leader-apply-pending)
  (eid/leader-register-core)
  (eid-research-register-leader-keys)
  (eid-ai-register-leader-keys)
  (eid-rss-register-leader-keys)
  (eid-signal-register-leader-keys))

(eid/use-package which-key
  :demand t
  :config
  (setq which-key-idle-delay 0.3)
  (which-key-mode 1)
  (eid/leader-register-which-key-labels))

(eid/use-package doom-themes
  :demand t
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (eid-ui-load-theme)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

(eid/use-package doom-modeline
  :demand t
  :config
  (doom-modeline-mode 1))

(eid/use-package transient :defer t)
(eid/use-package undo-tree
  :demand t
  :init
  ;; Keep undo history out of the working tree: by default undo-tree drops a
  ;; *.~undo-tree~ file next to every edited file. Stash it all in one dir.
  (let ((dir (expand-file-name "undo-tree-history/" user-emacs-directory)))
    (make-directory dir t)
    (setq undo-tree-history-directory-alist `(("." . ,dir))))
  :config
  (global-undo-tree-mode 1)
  ;; Bind u / C-r straight to undo-tree in Evil normal state — this is the old,
  ;; known-working setup from README.org. Relying on evil-undo-system dispatch
  ;; alone was flaky (u/C-r didn't behave Vim-like).
  (define-key evil-normal-state-map (kbd "u")   #'undo-tree-undo)
  (define-key evil-normal-state-map (kbd "C-r") #'undo-tree-redo)
  ;; Non-file buffers (*scratch*, dashboards, …) don't get undo-tree from the
  ;; global mode's file trigger, so turn it on whenever Evil turns on — this is
  ;; the fix undo-tree's own error message recommends.
  (add-hook 'evil-local-mode-hook #'turn-on-undo-tree-mode))
(eid/use-package consult :defer t)
(eid/use-package vertico
  :init
  (vertico-mode 1))
(eid/use-package marginalia
  :init
  (marginalia-mode 1))
(eid/use-package orderless
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))
(eid/use-package company
  :hook (after-init . global-company-mode))
(eid/use-package magit :defer t)
(eid/use-package eyebrowse
  :demand t
  :config
  (eyebrowse-mode 1)
  (setq eyebrowse-new-workspace t)
  (define-key eyebrowse-mode-map (kbd "C-w j") #'eyebrowse-switch-to-window-config-1)
  (define-key eyebrowse-mode-map (kbd "C-w k") #'eyebrowse-switch-to-window-config-2)
  (define-key eyebrowse-mode-map (kbd "C-w l") #'eyebrowse-switch-to-window-config-3)
  (define-key eyebrowse-mode-map (kbd "C-w ;") #'eyebrowse-switch-to-window-config-4))
(eid/use-package projectile
  :init
  (projectile-mode 1))
(eid/use-package visual-fill-column
  :hook ((org-mode markdown-mode text-mode) . visual-fill-column-mode))
(eid/use-package olivetti :defer t)
(eid/use-package flyspell-correct :defer t)
(eid/use-package flyspell-correct-ivy :defer t)
(eid/use-package academic-phrases :defer t)
(eid/use-package yasnippet
  :init
  (eid-private-configure-snippets)
  (yas-global-mode 1))

(eid/use-package citar
  :defer t
  :config
  (eid-research-configure-citations))
(eid/use-package org-ref :defer t)
(eid/use-package org-roam
  :defer t
  :init
  (setq org-roam-directory (file-truename eid-notes-directory))
  :config
  (eid-research-configure-org-roam))
(eid/use-package org-roam-bibtex :after org-roam)
(eid/use-package denote
  :defer t
  :config
  (setq denote-directory eid-notes-directory))

(eid/use-package markdown-mode :mode "\\.md\\'")
(eid/use-package python-mode :mode "\\.py\\'")
(eid/use-package pyvenv :defer t)
(eid/use-package lsp-mode :commands lsp)
(eid/use-package lsp-pyright
  :after lsp-mode
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))
(eid/use-package blacken :hook (python-mode . blacken-mode))
(eid/use-package ess :defer t)

(eid/use-package gptel
  :defer t
  :config
  (eid-ai-setup))

(eid/use-package elfeed
  :defer t
  :config
  (eid-rss-setup))

(eid/use-package elfeed-org :after elfeed)

(eid/use-package ox-hugo :after ox)

(eid-research-setup)

(when eid-load-legacy-literate-config
  (dolist (file '("README.org"))
    (let ((org-file (expand-file-name file eid-config-root)))
      (when (file-exists-p org-file)
        (org-babel-load-file org-file)))))

(provide 'init)
;;; init.el ends here
(load "~/.openclaw/workspace/skills/pipeline/emacs/openclaw-org.el")
