;;; eid-ai.el --- AI-assisted research and writing workflows -*- lexical-binding: t; -*-

;;; Commentary:
;; Provider-neutral commands built on gptel.  API keys are read only at request
;; time from environment variables or auth-source; no secrets belong in git.

;;; Code:

(require 'auth-source)
(require 'cl-lib)
(require 'subr-x)
(require 'eid-platform)
(require 'eid-leader)

(declare-function gptel "gptel" (&optional arg))
(declare-function gptel-request "gptel" (&optional prompt &rest args))
(declare-function gptel-make-openai "gptel-openai" (name &rest args))
(declare-function gptel-make-anthropic "gptel-anthropic" (name &rest args))
(declare-function org-back-to-heading "org" (&optional invisible-ok))
(declare-function org-end-of-subtree "org" (&optional invisible-ok to-heading))

(defvar gptel-backend)
(defvar gptel-directives)
(defvar gptel-max-tokens)
(defvar gptel-model)
(defvar gptel-temperature)

(defgroup eid-ai nil
  "AI provider and writing workflow settings."
  :group 'eid
  :prefix "eid-ai-")

(defcustom eid-ai-default-provider 'openai
  "Default AI provider.

Supported values are `openai' and `anthropic'."
  :type '(choice (const :tag "OpenAI" openai)
                 (const :tag "Anthropic / Claude" anthropic))
  :group 'eid-ai)

(defcustom eid-ai-openai-model "gpt-4.1"
  "Default OpenAI model name used by gptel."
  :type 'string
  :group 'eid-ai)

(defcustom eid-ai-anthropic-model "claude-sonnet-4-5"
  "Default Anthropic Claude model name used by gptel."
  :type 'string
  :group 'eid-ai)

(defcustom eid-ai-temperature 0.3
  "Default sampling temperature for AI writing workflows."
  :type 'number
  :group 'eid-ai)

(defcustom eid-ai-max-tokens 2500
  "Default maximum output tokens for AI writing workflows."
  :type 'integer
  :group 'eid-ai)

(defcustom eid-ai-system-prompt
  "You are a careful research and writing assistant. Be precise, cite uncertainty, preserve confidentiality, and avoid overclaiming."
  "Default system prompt for research and writing commands."
  :type 'string
  :group 'eid-ai)

(defcustom eid-ai-prompt-directory
  (expand-file-name "prompts/" (or (bound-and-true-p eid-config-root)
                                   user-emacs-directory))
  "Directory containing Markdown prompt templates."
  :type 'directory
  :group 'eid-ai)

(defvar eid-ai--backends nil
  "Alist mapping provider symbols to gptel backend objects.")

(defun eid-ai--model-symbol (model)
  "Return MODEL as a symbol for gptel."
  (if (symbolp model) model (intern model)))

(defun eid-ai--auth-secret (host env-var)
  "Return a secret for HOST from ENV-VAR or auth-source."
  (or (getenv env-var)
      (let* ((match (car (auth-source-search :host host
                                             :user "apikey"
                                             :require '(:secret)
                                             :max 1)))
             (secret (plist-get match :secret)))
        (cond
         ((functionp secret) (funcall secret))
         ((stringp secret) secret)
         (t nil)))))

(defun eid-ai-openai-api-key ()
  "Return the OpenAI API key from safe local sources."
  (eid-ai--auth-secret "api.openai.com" "OPENAI_API_KEY"))

(defun eid-ai-anthropic-api-key ()
  "Return the Anthropic API key from safe local sources."
  (eid-ai--auth-secret "api.anthropic.com" "ANTHROPIC_API_KEY"))

(defun eid-ai-configure-backends ()
  "Configure gptel backends for OpenAI and Anthropic."
  (when (fboundp 'gptel-make-openai)
    (setf (alist-get 'openai eid-ai--backends)
          (gptel-make-openai "OpenAI"
            :key #'eid-ai-openai-api-key
            :stream t
            :models (list (eid-ai--model-symbol eid-ai-openai-model)))))
  (when (fboundp 'gptel-make-anthropic)
    (setf (alist-get 'anthropic eid-ai--backends)
          (gptel-make-anthropic "Claude"
            :key #'eid-ai-anthropic-api-key
            :stream t))))

(defun eid-ai-setup ()
  "Configure gptel backends and defaults."
  (eid-ai-configure-backends)
  (setq gptel-temperature eid-ai-temperature
        gptel-max-tokens eid-ai-max-tokens
        gptel-directives `((default . ,eid-ai-system-prompt)
                           (research . ,eid-ai-system-prompt)))
  (eid-ai-switch-provider eid-ai-default-provider t))

(defun eid-ai-switch-provider (provider &optional quiet model)
  "Switch gptel to PROVIDER and optionally MODEL.

When QUIET is non-nil, do not message."
  (interactive
   (let* ((provider
           (intern (completing-read "AI provider: "
                                    '("openai" "anthropic")
                                    nil t nil nil
                                    (symbol-name eid-ai-default-provider))))
          (default-model (pcase provider
                           ('anthropic eid-ai-anthropic-model)
                           (_ eid-ai-openai-model)))
          (model (read-string "Model: " default-model)))
     (list provider nil model)))
  (setq eid-ai-default-provider provider)
  (when (and model (not (string-empty-p model)))
    (pcase provider
      ('anthropic (setq eid-ai-anthropic-model model))
      (_ (setq eid-ai-openai-model model)))
    (eid-ai-configure-backends))
  (when-let ((backend (alist-get provider eid-ai--backends)))
    (setq gptel-backend backend
          gptel-model (pcase provider
                        ('anthropic (eid-ai--model-symbol eid-ai-anthropic-model))
                        (_ (eid-ai--model-symbol eid-ai-openai-model)))))
  (unless quiet
    (message "AI provider: %s, model: %s" provider gptel-model)))

(defun eid-ai--template (file fallback)
  "Return prompt template FILE from `eid-ai-prompt-directory' or FALLBACK."
  (let ((path (expand-file-name file eid-ai-prompt-directory)))
    (if (file-exists-p path)
        (with-temp-buffer
          (insert-file-contents path)
          (string-trim (buffer-string)))
      fallback)))

(defun eid-ai--bounds ()
  "Return selected region, current Org subtree, or whole buffer bounds.

The return value is (BEG END KIND)."
  (cond
   ((use-region-p)
    (list (region-beginning) (region-end) "region"))
   ((derived-mode-p 'org-mode)
    (save-excursion
      (condition-case nil
          (progn
            (org-back-to-heading t)
            (let ((beg (point)))
              (org-end-of-subtree t t)
              (list beg (point) "org subtree")))
        (error (list (point-min) (point-max) "buffer")))))
   (t
    (list (point-min) (point-max) "buffer"))))

(defun eid-ai--context-text ()
  "Return text and metadata for the current AI command."
  (pcase-let ((`(,beg ,end ,kind) (eid-ai--bounds)))
    (list :kind kind
          :text (buffer-substring-no-properties beg end)
          :buffer (buffer-name))))

(defun eid-ai--response-buffer (title)
  "Return a clean response buffer for TITLE."
  (let ((buffer (get-buffer-create (format "*eid-ai-%s*" title))))
    (with-current-buffer buffer
      (let ((inhibit-read-only t))
        (erase-buffer)
        (insert "# " title "\n\n")
        (when (fboundp 'org-mode)
          (org-mode))))
    buffer))

(defun eid-ai-request (title instruction &optional text)
  "Send INSTRUCTION and TEXT to the configured AI provider.

The response is inserted in a dedicated Org buffer."
  (interactive "sTitle: \nsInstruction: ")
  (unless (fboundp 'gptel-request)
    (user-error "Install/load gptel before using Eid AI commands"))
  (eid-ai-switch-provider eid-ai-default-provider t)
  (let* ((context (eid-ai--context-text))
         (body (or text (plist-get context :text)))
         (prompt (format "%s\n\nSource buffer: %s\nSource scope: %s\n\n---\n\n%s"
                         instruction
                         (plist-get context :buffer)
                         (plist-get context :kind)
                         body))
         (buffer (eid-ai--response-buffer title)))
    (with-current-buffer buffer
      (goto-char (point-max))
      (insert "Request sent to " (symbol-name eid-ai-default-provider) ".\n\n"))
    (pop-to-buffer buffer)
    (gptel-request prompt
      :buffer buffer
      :position (with-current-buffer buffer (point-max))
      :system eid-ai-system-prompt
      :callback
      (lambda (response info)
        (with-current-buffer buffer
          (goto-char (point-max))
          (let ((inhibit-read-only t))
            (cond
             ((stringp response) (insert response "\n"))
             ((eq response 'abort) (insert "[Request aborted]\n"))
             (t (insert (format "[Request failed: %s]\n"
                                (plist-get info :status)))))))))))

(defun eid-ai-chat ()
  "Open a gptel chat buffer."
  (interactive)
  (unless (fboundp 'gptel)
    (user-error "Install/load gptel before opening AI chat"))
  (eid-ai-switch-provider eid-ai-default-provider t)
  (call-interactively #'gptel))

(defun eid-ai--run-template (title file fallback)
  "Run prompt template FILE with FALLBACK under TITLE."
  (eid-ai-request title (eid-ai--template file fallback)))

(defun eid-ai-rewrite-region ()
  "Rewrite the region, Org subtree, or buffer for clarity."
  (interactive)
  (eid-ai--run-template
   "Rewrite"
   "research-review.md"
   "Rewrite the supplied text for clarity, structure, and precision. Preserve meaning and flag any claims that should not be changed without evidence."))

(defun eid-ai-summarize ()
  "Summarize the selected region, Org subtree, or buffer."
  (interactive)
  (eid-ai-request
   "Summary"
   "Summarize the supplied material for a researcher. Include key points, open questions, and suggested follow-up reading or verification tasks."))

(defun eid-ai-critique ()
  "Critique the selected region, Org subtree, or buffer."
  (interactive)
  (eid-ai-request
   "Critique"
   "Critique the supplied material as a careful peer reviewer. Focus on argument strength, missing evidence, ambiguity, methodology, and overclaiming."))

(defun eid-ai-generate-outline ()
  "Generate an outline from the selected material."
  (interactive)
  (eid-ai-request
   "Outline"
   "Generate a structured research or article outline from the supplied material. Include section headings, evidence needs, and a recommended narrative order."))

(defun eid-ai-research-memo ()
  "Convert rough notes into a polished research memo."
  (interactive)
  (eid-ai--run-template
   "Research Memo"
   "research-memo.md"
   "Convert the supplied rough notes into a polished research memo with executive summary, background, analysis, risks, evidence gaps, and next actions."))

(defun eid-ai-linkedin-draft ()
  "Convert selected material into a LinkedIn draft with guardrails."
  (interactive)
  (eid-ai--run-template
   "LinkedIn Draft"
   "linkedin-refine.md"
   "Convert the supplied material into a polished LinkedIn draft. Apply confidentiality guardrails: no current-employer confidential detail, no client names unless public, no private contact data, no CV-only commercial metrics, no internal project names, no prompt leakage, and no overclaiming."))

(defun eid-ai-website-article-draft ()
  "Convert selected material into a website article draft."
  (interactive)
  (eid-ai--run-template
   "Website Article"
   "website-article.md"
   "Convert the supplied material into a polished website article draft with title options, summary, body, evidence notes, and publication risks."))

(defun eid-ai-extract-evidence-needed-claims ()
  "Extract claims that need citations, evidence, or verification."
  (interactive)
  (eid-ai--run-template
   "Evidence Needed"
   "evidence-claims.md"
   "Extract claims that need evidence. For each claim, explain why it needs support and suggest credible evidence types or sources."))

(defun eid-ai-privacy-review ()
  "Review selected material for privacy and publication risk."
  (interactive)
  (eid-ai--run-template
   "Privacy Review"
   "privacy-check.md"
   "Review the supplied text for privacy, confidentiality, prompt leakage, overclaiming, private names, internal project names, client identifiers, and commercial metrics that should not be published."))

(defun eid-ai-arabic-style-review ()
  "Refine Arabic writing idiomatically for professional audiences."
  (interactive)
  (eid-ai--run-template
   "Arabic Style Review"
   "arabic-style-review.md"
   "Refine the supplied Arabic or bilingual material into idiomatic, high-register Arabic for professional research and executive audiences. Do not produce a literal translation. Preserve nuance, rhythm, and intended meaning."))

(defun eid-ai-dispatch ()
  "Dispatch Eid AI commands from a mnemonic menu."
  (interactive)
  (let* ((choices '(("chat" . eid-ai-chat)
                    ("rewrite" . eid-ai-rewrite-region)
                    ("summarize" . eid-ai-summarize)
                    ("critique" . eid-ai-critique)
                    ("outline" . eid-ai-generate-outline)
                    ("memo" . eid-ai-research-memo)
                    ("linkedin" . eid-ai-linkedin-draft)
                    ("website" . eid-ai-website-article-draft)
                    ("evidence" . eid-ai-extract-evidence-needed-claims)
                    ("privacy" . eid-ai-privacy-review)
                    ("arabic" . eid-ai-arabic-style-review)
                    ("switch provider/model" . eid-ai-switch-provider)))
         (choice (completing-read "AI command: " (mapcar #'car choices) nil t)))
    (call-interactively (cdr (assoc choice choices)))))

(defun eid-ai-register-leader-keys ()
  "Register AI leader bindings."
  (interactive)
  (eid/leader-set-key
   "ac" #'eid-ai-chat
   "ar" #'eid-ai-rewrite-region
   "as" #'eid-ai-summarize
   "ao" #'eid-ai-generate-outline
   "ae" #'eid-ai-extract-evidence-needed-claims
   "ap" #'eid-ai-privacy-review
   "al" #'eid-ai-linkedin-draft
   "aw" #'eid-ai-website-article-draft
   "aA" #'eid-ai-arabic-style-review
   "am" #'eid-ai-switch-provider
   "ad" #'eid-ai-dispatch))

(provide 'eid-ai)
;;; eid-ai.el ends here
