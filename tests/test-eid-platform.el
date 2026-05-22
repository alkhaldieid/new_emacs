;;; test-eid-platform.el --- Tests for platform helpers -*- lexical-binding: t; -*-

(require 'ert)
(require 'eid-platform)

(ert-deftest eid-platform-expand-path-expands-home ()
  (should (file-name-absolute-p (eid/expand-path "~/Research"))))

(ert-deftest eid-platform-slugify-is-conservative ()
  (should (equal (eid/slugify "AI, RAG & Insurance: 2026!") "ai-rag-insurance-2026")))

(ert-deftest eid-platform-path-inside-p-detects-child ()
  (let* ((root (make-temp-file "eid-root" t))
         (child (expand-file-name "notes/a.org" root)))
    (make-directory (file-name-directory child) t)
    (with-temp-file child (insert "x"))
    (should (eid/path-inside-p child root))))

(ert-deftest eid-platform-open-command-is-platform-aware ()
  (let ((command (eid/platform-open-command)))
    (should (or (null command) (stringp command)))))

;;; test-eid-platform.el ends here
