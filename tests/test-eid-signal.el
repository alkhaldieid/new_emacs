;;; test-eid-signal.el --- Tests for signal helpers -*- lexical-binding: t; -*-

(require 'ert)
(require 'eid-signal)

(ert-deftest eid-signal-finds-newest-generated-post ()
  (let* ((root (make-temp-file "eid-signal" t))
         (out (expand-file-name "output" root))
         (old (expand-file-name "old.md" out))
         (new (expand-file-name "new.md" out))
         (eid-signal-pipeline-directory root)
         (eid-signal-output-directories '("output")))
    (make-directory out t)
    (with-temp-file old (insert "old"))
    (sleep-for 1)
    (with-temp-file new (insert "new"))
    (should (equal (eid-signal-latest-post) new))))

(ert-deftest eid-signal-target-file-uses-website-content-directory ()
  (let* ((eid-personal-website-directory (file-name-as-directory (make-temp-file "site" t)))
         (eid-website-content-directory "content/posts")
         (target (eid-signal--target-file "/tmp/My Signal Post.md")))
    (should (string-match-p "/content/posts/[0-9]\\{4\\}-[0-9]\\{2\\}-[0-9]\\{2\\}-my-signal-post\\.md\\'"
                            target))))

;;; test-eid-signal.el ends here
