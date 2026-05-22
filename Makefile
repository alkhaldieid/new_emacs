EMACS ?= emacs
LISP_DIR := lisp
TEST_DIR := tests
LISP_FILES := $(wildcard $(LISP_DIR)/*.el)
TEST_FILES := $(wildcard $(TEST_DIR)/*.el)

.PHONY: ci compile test clean

ci: compile test

compile:
	$(EMACS) -Q --batch -L $(LISP_DIR) -f batch-byte-compile init.el $(LISP_FILES)

test:
	$(EMACS) -Q --batch -L $(LISP_DIR) $(foreach file,$(TEST_FILES),-l $(file)) -f ert-run-tests-batch-and-exit

clean:
	find . -name '*.elc' -delete
