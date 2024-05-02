
:tanat

"29.3"

#s(hash-table size 97 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("org-elpa" ("2024-04-30 17:19:10" nil (:local-repo nil :package "org-elpa" :type git)) "melpa" ("2024-04-30 17:19:11" nil (:type git :host github :repo "melpa/melpa" :build nil :package "melpa" :local-repo "melpa")) "gnu-elpa-mirror" ("2024-04-20 11:28:43" nil (:type git :host github :repo "emacs-straight/gnu-elpa-mirror" :build nil :package "gnu-elpa-mirror" :local-repo "gnu-elpa-mirror")) "nongnu-elpa" ("2024-04-20 11:28:43" nil (:type git :repo "https://git.savannah.gnu.org/git/emacs/nongnu.git" :depth (full single-branch) :local-repo "nongnu-elpa" :build nil :package "nongnu-elpa")) "el-get" ("2024-04-20 11:28:43" nil (:type git :host github :repo "dimitri/el-get" :build nil :files ("*.el" ("recipes" "recipes/el-get.rcp") "methods" "el-get-pkg.el") :flavor melpa :package "el-get" :local-repo "el-get")) "emacsmirror-mirror" ("2024-04-20 11:28:43" nil (:type git :host github :repo "emacs-straight/emacsmirror-mirror" :build nil :package "emacsmirror-mirror" :local-repo "emacsmirror-mirror")) "straight" ("2024-04-20 11:28:43" ("emacs") (:type git :host github :repo "radian-software/straight.el" :files ("straight*.el") :branch "master" :package "straight" :local-repo "straight.el")) "use-package" ("2024-04-20 11:28:43" ("emacs" "bind-key") (:type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package" :package "use-package" :local-repo "use-package")) "bind-key" ("2024-04-20 11:28:43" ("emacs") (:flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :package "bind-key" :local-repo "use-package" :type git :repo "jwiegley/use-package" :host github)) "org" ("2024-04-20 11:28:43" ("emacs") (:type git :repo "https://git.savannah.gnu.org/git/emacs/org-mode.git" :local-repo "org" :depth full :pre-build (straight-recipes-org-elpa--build) :build (:not autoloads) :files (:defaults "lisp/*.el" ("etc/styles/" "etc/styles/*")) :package "org")) "evil" ("2024-04-20 11:28:43" ("emacs" "goto-chg" "cl-lib") (:type git :flavor melpa :files (:defaults "doc/build/texinfo/evil.texi" (:exclude "evil-test-helpers.el") "evil-pkg.el") :host github :repo "emacs-evil/evil" :package "evil" :local-repo "evil")) "goto-chg" ("2024-04-20 11:28:43" ("emacs") (:type git :flavor melpa :host github :repo "emacs-evil/goto-chg" :package "goto-chg" :local-repo "goto-chg")) "evil-org" ("2024-04-20 11:28:43" ("emacs" "evil") (:type git :flavor melpa :host github :repo "Somelauw/evil-org-mode" :package "evil-org" :local-repo "evil-org-mode")) "org-pomodoro" ("2024-04-20 11:28:44" ("alert" "cl-lib") (:type git :flavor melpa :files (:defaults "resources" "org-pomodoro-pkg.el") :host github :repo "marcinkoziej/org-pomodoro" :package "org-pomodoro" :local-repo "org-pomodoro")) "alert" ("2024-04-20 11:28:44" ("gntp" "log4e" "cl-lib") (:type git :flavor melpa :host github :repo "jwiegley/alert" :package "alert" :local-repo "alert")) "gntp" ("2024-04-20 11:28:44" nil (:type git :flavor melpa :host github :repo "tekai/gntp.el" :package "gntp" :local-repo "gntp.el")) "log4e" ("2024-04-20 11:28:44" nil (:type git :flavor melpa :host github :repo "aki2o/log4e" :package "log4e" :local-repo "log4e")) "undo-tree" ("2024-04-20 11:28:44" ("queue" "emacs") (:type git :host github :repo "emacs-straight/undo-tree" :files ("*" (:exclude ".git")) :package "undo-tree" :local-repo "undo-tree")) "queue" ("2024-04-20 11:28:44" ("cl-lib") (:type git :host github :repo "emacs-straight/queue" :files ("*" (:exclude ".git")) :package "queue" :local-repo "queue")) "eyebrowse" ("2024-04-20 11:28:44" ("dash" "emacs") (:type git :flavor melpa :repo "https://depp.brause.cc/eyebrowse.git" :package "eyebrowse" :local-repo "eyebrowse")) "dash" ("2024-04-20 11:28:44" ("emacs") (:type git :flavor melpa :files ("dash.el" "dash.texi" "dash-pkg.el") :host github :repo "magnars/dash.el" :package "dash" :local-repo "dash.el")) "evil-leader" ("2024-04-20 11:28:44" ("evil") (:type git :flavor melpa :host github :repo "cofi/evil-leader" :package "evil-leader" :local-repo "evil-leader")) "which-key" ("2024-04-20 11:28:44" ("emacs") (:type git :flavor melpa :host github :repo "justbur/emacs-which-key" :package "which-key" :local-repo "emacs-which-key")) "yasnippet" ("2024-04-20 11:28:44" ("cl-lib") (:type git :flavor melpa :files ("yasnippet.el" "snippets" "yasnippet-pkg.el") :host github :repo "joaotavora/yasnippet" :package "yasnippet" :local-repo "yasnippet")) "visual-fill-column" ("2024-04-20 11:28:44" ("emacs") (:type git :flavor melpa :host codeberg :repo "joostkremers/visual-fill-column" :package "visual-fill-column" :local-repo "visual-fill-column")) "company" ("2024-04-20 11:28:44" ("emacs") (:type git :flavor melpa :files (:defaults "icons" ("images/small" "doc/images/small/*.png") "company-pkg.el") :host github :repo "company-mode/company-mode" :package "company" :local-repo "company-mode")) "vertico" ("2024-04-20 11:28:44" ("emacs" "compat") (:type git :host github :repo "emacs-straight/vertico" :files ("*" (:exclude ".git")) :package "vertico" :local-repo "vertico")) "compat" ("2024-04-20 11:28:44" ("emacs" "seq") (:type git :host github :repo "emacs-straight/compat" :files ("*" (:exclude ".git")) :package "compat" :local-repo "compat")) "marginalia" ("2024-04-20 11:28:44" ("emacs" "compat") (:type git :flavor melpa :host github :repo "minad/marginalia" :package "marginalia" :local-repo "marginalia")) "orderless" ("2024-04-20 11:28:44" ("emacs") (:type git :flavor melpa :host github :repo "oantolin/orderless" :package "orderless" :local-repo "orderless")) "consult" ("2024-04-20 11:28:44" ("emacs" "compat") (:type git :flavor melpa :host github :repo "minad/consult" :package "consult" :local-repo "consult")) "leuven-theme" ("2024-04-20 11:28:44" nil (:type git :flavor melpa :host github :repo "fniessen/emacs-leuven-theme" :package "leuven-theme" :local-repo "emacs-leuven-theme")) "ef-themes" ("2024-04-20 11:28:44" ("emacs") (:type git :host github :repo "emacs-straight/ef-themes" :files ("*" (:exclude ".git")) :package "ef-themes" :local-repo "ef-themes")) "dracula-theme" ("2024-04-20 11:28:44" ("emacs") (:type git :flavor melpa :host github :repo "dracula/emacs" :package "dracula-theme" :local-repo "emacs")) "parchment-theme" ("2024-04-20 11:28:44" ("autothemer") (:type git :flavor melpa :host gitlab :repo "ajgrf/parchment" :package "parchment-theme" :local-repo "parchment")) "autothemer" ("2024-04-20 11:28:44" ("dash" "emacs") (:type git :flavor melpa :host github :repo "jasonm23/autothemer" :package "autothemer" :local-repo "autothemer")) "cloud-theme" ("2024-04-20 11:28:44" ("emacs") (:type git :flavor melpa :host github :repo "vallyscode/cloud-theme" :package "cloud-theme" :local-repo "cloud-theme")) "moe-theme" ("2024-04-20 11:28:44" nil (:type git :flavor melpa :host github :repo "kuanyui/moe-theme.el" :package "moe-theme" :local-repo "moe-theme.el")) "zenburn-theme" ("2024-04-20 11:28:44" nil (:type git :flavor melpa :host github :repo "bbatsov/zenburn-emacs" :package "zenburn-theme" :local-repo "zenburn-emacs")) "monokai-theme" ("2024-04-20 11:28:44" nil (:type git :flavor melpa :host github :repo "oneKelvinSmith/monokai-emacs" :package "monokai-theme" :local-repo "monokai-emacs")) "gruvbox-theme" ("2024-04-20 11:28:44" ("autothemer") (:type git :flavor melpa :host github :repo "greduan/emacs-theme-gruvbox" :package "gruvbox-theme" :local-repo "emacs-theme-gruvbox")) "ample-theme" ("2024-04-20 11:28:45" nil (:type git :flavor melpa :host github :repo "jordonbiondo/ample-theme" :package "ample-theme" :local-repo "ample-theme")) "ample-zen-theme" ("2024-04-20 11:28:45" nil (:type git :flavor melpa :host github :repo "mjwall/ample-zen" :package "ample-zen-theme" :local-repo "ample-zen")) "alect-themes" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :host github :repo "alezost/alect-themes" :package "alect-themes" :local-repo "alect-themes")) "tao-theme" ("2024-04-20 11:28:45" ("cl-lib") (:type git :flavor melpa :host github :repo "11111000000/tao-theme-emacs" :package "tao-theme" :local-repo "tao-theme-emacs")) "poet-theme" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :host github :repo "kunalb/poet" :package "poet-theme" :local-repo "poet")) "modus-themes" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :host sourcehut :repo "protesilaos/modus-themes" :package "modus-themes" :local-repo "modus-themes")) "faff-theme" ("2024-04-20 11:28:45" nil (:type git :flavor melpa :host github :repo "WJCFerguson/emacs-faff-theme" :package "faff-theme" :local-repo "emacs-faff-theme")) "color-theme-modern" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :host github :repo "emacs-jp/replace-colorthemes" :package "color-theme-modern" :local-repo "replace-colorthemes")) "solarized-theme" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :host github :repo "bbatsov/solarized-emacs" :package "solarized-theme" :local-repo "solarized-emacs")) "beacon" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :host github :repo "Malabarba/beacon" :package "beacon" :local-repo "beacon")) "doom-modeline" ("2024-04-20 11:28:45" ("emacs" "compat" "nerd-icons" "shrink-path") (:type git :flavor melpa :host github :repo "seagle0128/doom-modeline" :package "doom-modeline" :local-repo "doom-modeline")) "nerd-icons" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :files (:defaults "data" "nerd-icons-pkg.el") :host github :repo "rainstormstudio/nerd-icons.el" :package "nerd-icons" :local-repo "nerd-icons.el")) "shrink-path" ("2024-04-20 11:28:45" ("emacs" "s" "dash" "f") (:type git :flavor melpa :host gitlab :repo "bennya/shrink-path.el" :package "shrink-path" :local-repo "shrink-path.el")) "s" ("2024-04-20 11:28:45" nil (:type git :flavor melpa :host github :repo "magnars/s.el" :package "s" :local-repo "s.el")) "f" ("2024-04-20 11:28:45" ("emacs" "s" "dash") (:type git :flavor melpa :host github :repo "rejeep/f.el" :package "f" :local-repo "f.el")) "org-superstar" ("2024-04-20 11:28:45" ("org" "emacs") (:type git :flavor melpa :host github :repo "integral-dw/org-superstar-mode" :package "org-superstar" :local-repo "org-superstar-mode")) "ivy-bibtex" ("2024-04-20 11:28:45" ("bibtex-completion" "ivy" "cl-lib") (:type git :flavor melpa :files ("ivy-bibtex.el" "ivy-bibtex-pkg.el") :host github :repo "tmalsburg/helm-bibtex" :package "ivy-bibtex" :local-repo "helm-bibtex")) "bibtex-completion" ("2024-04-20 11:28:45" ("parsebib" "s" "dash" "f" "cl-lib" "biblio" "emacs") (:flavor melpa :files ("bibtex-completion.el" "bibtex-completion-pkg.el") :package "bibtex-completion" :local-repo "helm-bibtex" :type git :repo "tmalsburg/helm-bibtex" :host github)) "parsebib" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :host github :repo "joostkremers/parsebib" :package "parsebib" :local-repo "parsebib")) "biblio" ("2024-04-20 11:28:45" ("emacs" "biblio-core") (:type git :flavor melpa :files (:defaults (:exclude "biblio-core.el") "biblio-pkg.el") :host github :repo "cpitclaudel/biblio.el" :package "biblio" :local-repo "biblio.el")) "biblio-core" ("2024-04-20 11:28:45" ("emacs" "let-alist" "seq" "dash") (:flavor melpa :files ("biblio-core.el" "biblio-core-pkg.el") :package "biblio-core" :local-repo "biblio.el" :type git :repo "cpitclaudel/biblio.el" :host github)) "let-alist" ("2024-04-20 11:28:45" ("emacs") (:type git :host github :repo "emacs-straight/let-alist" :files ("*" (:exclude ".git")) :package "let-alist" :local-repo "let-alist")) "ivy" ("2024-04-20 11:28:45" ("emacs") (:type git :flavor melpa :files (:defaults "doc/ivy-help.org" (:exclude "swiper.el" "counsel.el" "ivy-hydra.el" "ivy-avy.el") "ivy-pkg.el") :host github :repo "abo-abo/swiper" :package "ivy" :local-repo "swiper")) "org-ref" ("2024-04-20 11:28:45" ("org" "dash" "s" "f" "htmlize" "hydra" "avy" "parsebib" "bibtex-completion" "citeproc" "ox-pandoc") (:type git :flavor melpa :files (:defaults "org-ref.org" "org-ref.bib" "citeproc" "org-ref-pkg.el") :host github :repo "jkitchin/org-ref" :package "org-ref" :local-repo "org-ref")) "htmlize" ("2024-04-20 11:28:45" nil (:type git :flavor melpa :host github :repo "hniksic/emacs-htmlize" :package "htmlize" :local-repo "emacs-htmlize")) "hydra" ("2024-04-20 11:28:45" ("cl-lib" "lv") (:type git :flavor melpa :files (:defaults (:exclude "lv.el") "hydra-pkg.el") :host github :repo "abo-abo/hydra" :package "hydra" :local-repo "hydra")) "lv" ("2024-04-20 11:28:45" nil (:flavor melpa :files ("lv.el" "lv-pkg.el") :package "lv" :local-repo "hydra" :type git :repo "abo-abo/hydra" :host github)) "avy" ("2024-04-20 11:28:45" ("emacs" "cl-lib") (:type git :flavor melpa :host github :repo "abo-abo/avy" :package "avy" :local-repo "avy")) "citeproc" ("2024-04-20 11:28:45" ("emacs" "dash" "s" "f" "queue" "string-inflection" "org" "parsebib") (:type git :flavor melpa :host github :repo "andras-simonyi/citeproc-el" :package "citeproc" :local-repo "citeproc-el")) "string-inflection" ("2024-04-20 11:28:45" nil (:type git :flavor melpa :host github :repo "akicho8/string-inflection" :package "string-inflection" :local-repo "string-inflection")) "ox-pandoc" ("2024-04-20 11:28:45" ("org" "emacs" "dash" "ht") (:type git :flavor melpa :host github :repo "emacsorphanage/ox-pandoc" :package "ox-pandoc" :local-repo "ox-pandoc")) "ht" ("2024-04-20 11:28:45" ("dash") (:type git :flavor melpa :host github :repo "Wilfred/ht.el" :package "ht" :local-repo "ht.el")) "org-roam" ("2024-04-20 11:28:47" ("emacs" "dash" "org" "emacsql" "magit-section") (:type git :flavor melpa :files (:defaults "extensions/*" "org-roam-pkg.el") :host github :repo "org-roam/org-roam" :package "org-roam" :local-repo "org-roam")) "emacsql" ("2024-04-20 11:28:47" ("emacs") (:type git :flavor melpa :files (:defaults "sqlite" "emacsql-pkg.el") :host github :repo "magit/emacsql" :package "emacsql" :local-repo "emacsql")) "magit-section" ("2024-04-20 11:28:47" ("emacs" "compat" "dash") (:type git :flavor melpa :files ("lisp/magit-section.el" "lisp/magit-section-pkg.el" "docs/magit-section.texi" "Documentation/magit-section.texi" "magit-section-pkg.el") :host github :repo "magit/magit" :package "magit-section" :local-repo "magit")) "org-roam-bibtex" ("2024-04-20 11:28:47" ("emacs" "org-roam" "bibtex-completion") (:type git :flavor melpa :host github :repo "org-roam/org-roam-bibtex" :package "org-roam-bibtex" :local-repo "org-roam-bibtex")) "deft" ("2024-04-20 11:28:48" nil (:type git :flavor melpa :host github :repo "jrblevin/deft" :package "deft" :local-repo "deft")) "mw-thesaurus" ("2024-04-20 11:28:48" ("emacs" "request" "dash") (:type git :flavor melpa :host github :repo "agzam/mw-thesaurus.el" :package "mw-thesaurus" :local-repo "mw-thesaurus.el")) "request" ("2024-04-20 11:28:48" ("emacs") (:type git :flavor melpa :files ("request.el" "request-pkg.el") :host github :repo "tkf/emacs-request" :package "request" :local-repo "emacs-request")) "flyspell-correct-ivy" ("2024-04-20 11:28:48" ("flyspell-correct" "ivy" "emacs") (:type git :flavor melpa :files ("flyspell-correct-ivy.el" "flyspell-correct-ivy-pkg.el") :host github :repo "d12frosted/flyspell-correct" :package "flyspell-correct-ivy" :local-repo "flyspell-correct")) "flyspell-correct" ("2024-04-20 11:28:48" ("emacs") (:flavor melpa :files ("flyspell-correct.el" "flyspell-correct-ido.el" "flyspell-correct-pkg.el") :package "flyspell-correct" :local-repo "flyspell-correct" :type git :repo "d12frosted/flyspell-correct" :host github)) "academic-phrases" ("2024-04-20 11:28:48" ("dash" "s" "ht" "emacs") (:type git :flavor melpa :host github :repo "nashamri/academic-phrases" :package "academic-phrases" :local-repo "academic-phrases")) "smartparens" ("2024-04-20 11:28:48" ("dash" "cl-lib") (:type git :flavor melpa :host github :repo "Fuco1/smartparens" :package "smartparens" :local-repo "smartparens")) "olivetti" ("2024-04-20 11:28:48" ("emacs") (:type git :flavor melpa :host github :repo "rnkn/olivetti" :package "olivetti" :local-repo "olivetti")) "pyvenv" ("2024-04-20 11:28:48" nil (:type git :flavor melpa :host github :repo "jorgenschaefer/pyvenv" :package "pyvenv" :local-repo "pyvenv")) "lsp-mode" ("2024-04-20 11:28:48" ("emacs" "dash" "f" "ht" "spinner" "markdown-mode" "lv" "eldoc") (:type git :flavor melpa :files (:defaults "clients/*.el" "lsp-mode-pkg.el") :host github :repo "emacs-lsp/lsp-mode" :package "lsp-mode" :local-repo "lsp-mode")) "spinner" ("2024-04-20 11:28:48" ("emacs") (:type git :host github :repo "emacs-straight/spinner" :files ("*" (:exclude ".git")) :package "spinner" :local-repo "spinner")) "markdown-mode" ("2024-04-20 11:28:48" ("emacs") (:type git :flavor melpa :host github :repo "jrblevin/markdown-mode" :package "markdown-mode" :local-repo "markdown-mode")) "eldoc" ("2024-04-20 11:28:48" ("emacs") (:type git :host github :repo "emacs-straight/eldoc" :files ("*" (:exclude ".git")) :package "eldoc" :local-repo "eldoc")) "openwith" ("2024-04-20 11:28:48" nil (:type git :flavor melpa :host github :repo "jpkotta/openwith" :package "openwith" :local-repo "openwith")) "vscode-dark-plus-theme" ("2024-04-30 17:19:14" nil (:type git :flavor melpa :host github :repo "ianyepan/vscode-dark-plus-emacs-theme" :package "vscode-dark-plus-theme" :local-repo "vscode-dark-plus-emacs-theme"))))

#s(hash-table size 97 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ((straight-autoloads straight-ert-print-hack straight-x straight) (autoload 'straight-remove-unused-repos "straight" "Remove unused repositories from the repos and build directories.
A repo is considered \"unused\" if it was not explicitly requested via
`straight-use-package' during the current Emacs session.
If FORCE is non-nil do not prompt before deleting repos.

(fn &optional FORCE)" t) (autoload 'straight-get-recipe "straight" "Interactively select a recipe from one of the recipe repositories.
All recipe repositories in `straight-recipe-repositories' will
first be cloned. After the recipe is selected, it will be copied
to the kill ring. With a prefix argument, first prompt for a
recipe repository to search. Only that repository will be
cloned.

From Lisp code, SOURCES should be a subset of the symbols in
`straight-recipe-repositories'. Only those recipe repositories
are cloned and searched. If it is nil or omitted, then the value
of `straight-recipe-repositories' is used. If SOURCES is the
symbol `interactive', then the user is prompted to select a
recipe repository, and a list containing that recipe repository
is used for the value of SOURCES. ACTION may be `copy' (copy
recipe to the kill ring), `insert' (insert at point), or nil (no
action, just return it).

Optional arg FILTER must be a unary function.
It takes a package name as its sole argument.
If it returns nil the candidate is excluded.

(fn &optional SOURCES ACTION FILTER)" t) (autoload 'straight-visit-package-website "straight" "Visit the package RECIPE's website.

(fn RECIPE)" t) (autoload 'straight-visit-package "straight" "Open PACKAGE's local repository directory.
When BUILD is non-nil visit PACKAGE's build directory.

(fn PACKAGE &optional BUILD)" t) (autoload 'straight-use-package "straight" "Register, clone, build, and activate a package and its dependencies.
This is the main entry point to the functionality of straight.el.

MELPA-STYLE-RECIPE is either a symbol naming a package, or a list
whose car is a symbol naming a package and whose cdr is a
property list containing e.g. `:type', `:local-repo', `:files',
and VC backend specific keywords.

First, the package recipe is registered with straight.el. If
NO-CLONE is a function, then it is called with two arguments: the
package name as a string, and a boolean value indicating whether
the local repository for the package is available. In that case,
the return value of the function is used as the value of NO-CLONE
instead. In any case, if NO-CLONE is non-nil, then processing
stops here.

Otherwise, the repository is cloned, if it is missing. If
NO-BUILD is a function, then it is called with one argument: the
package name as a string. In that case, the return value of the
function is used as the value of NO-BUILD instead. In any case,
if NO-BUILD is non-nil, then processing halts here. Otherwise,
the package is built and activated. Note that if the package
recipe has a nil `:build' entry, then NO-BUILD is ignored
and processing always stops before building and activation
occurs.

CAUSE is a string explaining the reason why
`straight-use-package' has been called. It is for internal use
only, and is used to construct progress messages. INTERACTIVE is
non-nil if the function has been called interactively. It is for
internal use only, and is used to determine whether to show a
hint about how to install the package permanently.

Return non-nil when package is initially installed, nil otherwise.

(fn MELPA-STYLE-RECIPE &optional NO-CLONE NO-BUILD CAUSE INTERACTIVE)" t) (autoload 'straight-register-package "straight" "Register a package without cloning, building, or activating it.
This function is equivalent to calling `straight-use-package'
with a non-nil argument for NO-CLONE. It is provided for
convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)") (autoload 'straight-use-package-no-build "straight" "Register and clone a package without building it.
This function is equivalent to calling `straight-use-package'
with nil for NO-CLONE but a non-nil argument for NO-BUILD. It is
provided for convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)") (autoload 'straight-use-package-lazy "straight" "Register, build, and activate a package if it is already cloned.
This function is equivalent to calling `straight-use-package'
with symbol `lazy' for NO-CLONE. It is provided for convenience.
MELPA-STYLE-RECIPE is as for `straight-use-package'.

(fn MELPA-STYLE-RECIPE)") (autoload 'straight-use-recipes "straight" "Register a recipe repository using MELPA-STYLE-RECIPE.
This registers the recipe and builds it if it is already cloned.
Note that you probably want the recipe for a recipe repository to
include a nil `:build' property, to unconditionally
inhibit the build phase.

This function also adds the recipe repository to
`straight-recipe-repositories', at the end of the list.

(fn MELPA-STYLE-RECIPE)") (autoload 'straight-override-recipe "straight" "Register MELPA-STYLE-RECIPE as a recipe override.
This puts it in `straight-recipe-overrides', depending on the
value of `straight-current-profile'.

(fn MELPA-STYLE-RECIPE)") (autoload 'straight-check-package "straight" "Rebuild a PACKAGE if it has been modified.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. See also `straight-rebuild-package' and
`straight-check-all'.

(fn PACKAGE)" t) (autoload 'straight-check-all "straight" "Rebuild any packages that have been modified.
See also `straight-rebuild-all' and `straight-check-package'.
This function should not be called during init." t) (autoload 'straight-rebuild-package "straight" "Rebuild a PACKAGE.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument RECURSIVE, rebuild
all dependencies as well. See also `straight-check-package' and
`straight-rebuild-all'.

(fn PACKAGE &optional RECURSIVE)" t) (autoload 'straight-rebuild-all "straight" "Rebuild all packages.
See also `straight-check-all' and `straight-rebuild-package'." t) (autoload 'straight-prune-build-cache "straight" "Prune the build cache.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information and any cached
autoloads discarded.") (autoload 'straight-prune-build-directory "straight" "Prune the build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build directories deleted.") (autoload 'straight-prune-build "straight" "Prune the build cache and build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information discarded and
their build directories deleted." t) (autoload 'straight-normalize-package "straight" "Normalize a PACKAGE's local repository to its recipe's configuration.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t) (autoload 'straight-normalize-all "straight" "Normalize all packages. See `straight-normalize-package'.
Return a list of recipes for packages that were not successfully
normalized. If multiple packages come from the same local
repository, only one is normalized.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t) (autoload 'straight-fetch-package "straight" "Try to fetch a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t) (autoload 'straight-fetch-package-and-deps "straight" "Try to fetch a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are fetched
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t) (autoload 'straight-fetch-all "straight" "Try to fetch all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, fetch not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
fetched. If multiple packages come from the same local
repository, only one is fetched.

PREDICATE, if provided, filters the packages that are fetched. It
is called with the package name as a string, and should return
non-nil if the package should actually be fetched.

(fn &optional FROM-UPSTREAM PREDICATE)" t) (autoload 'straight-merge-package "straight" "Try to merge a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t) (autoload 'straight-merge-package-and-deps "straight" "Try to merge a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are merged
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t) (autoload 'straight-merge-all "straight" "Try to merge all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, merge not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
merged. If multiple packages come from the same local
repository, only one is merged.

PREDICATE, if provided, filters the packages that are merged. It
is called with the package name as a string, and should return
non-nil if the package should actually be merged.

(fn &optional FROM-UPSTREAM PREDICATE)" t) (autoload 'straight-pull-package "straight" "Try to pull a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM, pull
not just from primary remote but also from upstream (for forked
packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t) (autoload 'straight-pull-package-and-deps "straight" "Try to pull a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are pulled
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
pull not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t) (autoload 'straight-pull-all "straight" "Try to pull all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, pull not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
pulled. If multiple packages come from the same local repository,
only one is pulled.

PREDICATE, if provided, filters the packages that are pulled. It
is called with the package name as a string, and should return
non-nil if the package should actually be pulled.

(fn &optional FROM-UPSTREAM PREDICATE)" t) (autoload 'straight-push-package "straight" "Push a PACKAGE to its primary remote, if necessary.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t) (autoload 'straight-push-all "straight" "Try to push all packages to their primary remotes.

Return a list of recipes for packages that were not successfully
pushed. If multiple packages come from the same local repository,
only one is pushed.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t) (autoload 'straight-freeze-versions "straight" "Write version lockfiles for currently activated packages.
This implies first pushing all packages that have unpushed local
changes. If the package management system has been used since the
last time the init-file was reloaded, offer to fix the situation
by reloading the init-file again. If FORCE is
non-nil (interactively, if a prefix argument is provided), skip
all checks and write the lockfile anyway.

Currently, writing version lockfiles requires cloning all lazily
installed packages. Hopefully, this inconvenient requirement will
be removed in the future.

Multiple lockfiles may be written (one for each profile),
according to the value of `straight-profiles'.

(fn &optional FORCE)" t) (autoload 'straight-thaw-versions "straight" "Read version lockfiles and restore package versions to those listed." t) (autoload 'straight-bug-report "straight" "Test straight.el in a clean environment.
ARGS may be any of the following keywords and their respective values:
  - :pre-bootstrap (Form)...
      Forms evaluated before bootstrapping straight.el
      e.g. (setq straight-repository-branch \"develop\")
      Note this example is already in the default bootstrapping code.

  - :post-bootstrap (Form)...
      Forms evaluated in the testing environment after boostrapping.
      e.g. (straight-use-package \\='(example :type git :host github))

  - :interactive Boolean
      If nil, the subprocess will immediately exit after the test.
      Output will be printed to `straight-bug-report--process-buffer'
      Otherwise, the subprocess will be interactive.

  - :preserve Boolean
      If non-nil, the test directory is left in the directory stored in the
      variable `temporary-file-directory'. Otherwise, it is
      immediately removed after the test is run.

  - :executable String
      Indicate the Emacs executable to launch.
      Defaults to the path of the current Emacs executable.

  - :raw Boolean
      If non-nil, the raw process output is sent to
      `straight-bug-report--process-buffer'. Otherwise, it is
      formatted as markdown for submitting as an issue.

  - :user-dir String
      If non-nil, the test is run with `user-emacs-directory' set to STRING.
      Otherwise, a temporary directory is created and used.
      Unless absolute, paths are expanded relative to the variable
      `temporary-file-directory'.

ARGS are accessible within the :pre/:post-bootsrap phases via the
locally bound plist, straight-bug-report-args.

(fn &rest ARGS)" nil t) (function-put 'straight-bug-report 'lisp-indent-function 0) (autoload 'straight-dependencies "straight" "Return a list of PACKAGE's dependencies.

(fn &optional PACKAGE)" t) (autoload 'straight-dependents "straight" "Return a list PACKAGE's dependents.

(fn &optional PACKAGE)" t) (register-definition-prefixes "straight" '("straight-")) (register-definition-prefixes "straight-ert-print-hack" '("+without-print-limits")) (defvar straight-x-pinned-packages nil "List of pinned packages.") (register-definition-prefixes "straight-x" '("straight-x-")) (provide 'straight-autoloads)) "bind-key" ((bind-key bind-key-autoloads) (autoload 'bind-key "bind-key" "Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'.  Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\".  See the documentation
of `edmacro-mode' for details.

COMMAND must be an interactive function, lambda form, or a cons
`(STRING . DEFN)'.

KEYMAP, if present, should be a keymap variable or symbol.
For example:

  (bind-key \"M-h\" #\\='some-interactive-function my-mode-map)

  (bind-key \"M-h\" #\\='some-interactive-function \\='my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t) (autoload 'unbind-key "bind-key" "Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

(fn KEY-NAME &optional KEYMAP)" nil t) (autoload 'bind-key* "bind-key" "Similar to `bind-key', but overrides any mode-specific bindings.

(fn KEY-NAME COMMAND &optional PREDICATE)" nil t) (autoload 'bind-keys "bind-key" "Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:repeat-docstring STR  - docstring for the repeat-map variable
:repeat-map MAP        - name of the repeat map that should be created
                         for these bindings. If specified, the
                         `repeat-map' property of each command bound
                         (within the scope of the `:repeat-map' keyword)
                         is set to this map.
:exit BINDINGS         - Within the scope of `:repeat-map' will bind the
                         key in the repeat map, but will not set the
                         `repeat-map' property of the bound command.
:continue BINDINGS     - Within the scope of `:repeat-map' forces the
                         same behaviour as if no special keyword had
                         been used (that is, the command is bound, and
                         it's `repeat-map' property set)
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

(fn &rest ARGS)" nil t) (autoload 'bind-keys* "bind-key" "Bind multiple keys at once, in `override-global-map'.
Accepts the same keyword arguments as `bind-keys' (which see).

This binds keys in such a way that bindings are not overridden by
other modes.  See `override-global-mode'.

(fn &rest ARGS)" nil t) (autoload 'describe-personal-keybindings "bind-key" "Display all the personal keybindings defined by `bind-key'." t) (register-definition-prefixes "bind-key" '("bind-key" "compare-keybindings" "get-binding-description" "override-global-m" "personal-keybindings")) (provide 'bind-key-autoloads)) "use-package" ((use-package-delight use-package-bind-key use-package-diminish use-package use-package-core use-package-autoloads use-package-jump use-package-ensure use-package-lint) (autoload 'use-package-autoload-keymap "use-package-bind-key" "Load PACKAGE and bind key sequence invoking this function to KEYMAP-SYMBOL.
Then simulate pressing the same key sequence a again, so that the
next key pressed is routed to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword.  It
works by binding the given key sequence to an invocation of this
function for a particular keymap.  The keymap is expected to be
defined by the package.  In this way, loading the package is
deferred until the prefix key sequence is pressed.

(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)") (autoload 'use-package-normalize-binder "use-package-bind-key" "

(fn NAME KEYWORD ARGS)") (defalias 'use-package-normalize/:bind 'use-package-normalize-binder) (defalias 'use-package-normalize/:bind* 'use-package-normalize-binder) (defalias 'use-package-autoloads/:bind 'use-package-autoloads-mode) (defalias 'use-package-autoloads/:bind* 'use-package-autoloads-mode) (autoload 'use-package-handler/:bind "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)") (defalias 'use-package-normalize/:bind-keymap 'use-package-normalize-binder) (defalias 'use-package-normalize/:bind-keymap* 'use-package-normalize-binder) (autoload 'use-package-handler/:bind-keymap "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)") (autoload 'use-package-handler/:bind-keymap* "use-package-bind-key" "

(fn NAME KEYWORD ARG REST STATE)") (register-definition-prefixes "use-package-bind-key" '("use-package-handler/:bind*")) (autoload 'use-package "use-package-core" "Declare an Emacs package by specifying a group of configuration options.

For the full documentation, see Info node `(use-package) top'.
Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.
:autoload        Similar to :commands, but it for no-interactive one.
:hook            Specify hook(s) to attach this package to.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic', `:hook',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:demand          Prevent the automatic deferred loading introduced by constructs
                 such as `:bind' (see `:defer' for the complete list).

:after           Delay the effect of the use-package declaration
                 until after the named libraries have loaded.
                 Before they have been loaded, no other keyword
                 has any effect at all, and once they have been
                 loaded it is as if `:after' was not specified.

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `Custom-set' or `set-default' with each variable
                 definition without modifying the Emacs `custom-file'.
                 (compare with `custom-set-variables').
:custom-face     Call `custom-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

(fn NAME &rest ARGS)" nil t) (function-put 'use-package 'lisp-indent-function 'defun) (register-definition-prefixes "use-package-core" '("use-package-")) (autoload 'use-package-normalize/:delight "use-package-delight" "Normalize arguments to delight.

(fn NAME KEYWORD ARGS)") (autoload 'use-package-handler/:delight "use-package-delight" "

(fn NAME KEYWORD ARGS REST STATE)") (register-definition-prefixes "use-package-delight" '("use-package-normalize-delight")) (autoload 'use-package-normalize/:diminish "use-package-diminish" "

(fn NAME KEYWORD ARGS)") (autoload 'use-package-handler/:diminish "use-package-diminish" "

(fn NAME KEYWORD ARG REST STATE)") (register-definition-prefixes "use-package-diminish" '("use-package-normalize-diminish")) (autoload 'use-package-normalize/:ensure "use-package-ensure" "

(fn NAME KEYWORD ARGS)") (autoload 'use-package-handler/:ensure "use-package-ensure" "

(fn NAME KEYWORD ENSURE REST STATE)") (register-definition-prefixes "use-package-ensure" '("use-package-")) (autoload 'use-package-jump-to-package-form "use-package-jump" "Attempt to find and jump to the `use-package' form that loaded PACKAGE.
This will only find the form if that form actually required
PACKAGE.  If PACKAGE was previously required then this function
will jump to the file that originally required PACKAGE instead.

(fn PACKAGE)" t) (register-definition-prefixes "use-package-jump" '("use-package-find-require")) (autoload 'use-package-lint "use-package-lint" "Check for errors in `use-package' declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found." t) (register-definition-prefixes "use-package-lint" '("use-package-lint-declaration")) (provide 'use-package-autoloads)) "org" ((org-fold-core org-element ol ob-processing ol-bibtex org-mouse ol-eshell ob-sed ob-maxima ob-makefile ox-odt ob-gnuplot ob-org ob-emacs-lisp ol-gnus ob-plantuml ox-beamer org-cycle ox-ascii org-fold org-agenda ob-sql org-tempo ob-lilypond org-clock oc-natbib org-compat oc-biblatex ob-lisp org-macro org-inlinetask org-feed oc-bibtex ob-shell ol-rmail org-refile org-entities ob-core org-element-ast ox-md ob-perl ob-dot ob-eval ob-awk ox-icalendar org-loaddefs ob-ditaa ob-lob org-timer ob-haskell ol-info org-capture org-habit org-datetree ob-clojure org-persist ox-org ox-publish ox-latex ob-exp ol-eww org-archive org-attach ob-screen org-plot ob-sass ob-groovy org-duration org-goto ob-sqlite ol-doi ob-tangle ob-table oc org-src org-protocol ol-w3m ox-html ob-scheme ob-julia ox-texinfo ob-python org-indent org-attach-git org-colview ox-man ol-bbdb org-list org ob-fortran ol-irc org-ctags ob-octave org-footnote ob-forth ob-R org-table oc-basic org-crypt org-id org-keys ob-js ob-matlab ob-ruby org-faces ox-koma-letter org-mobile ol-mhe ob-java ol-docview ob-latex oc-csl ob-lua org-macs org-lint ob-ref ob-comint ob-ocaml org-num ob-css ob-eshell org-pcomplete ob ob-C ox ob-calc org-version ol-man)) "goto-chg" ((goto-chg-autoloads goto-chg) (autoload 'goto-last-change "goto-chg" "Go to the point where the last edit was made in the current buffer.
Repeat the command to go to the second last edit, etc.

To go back to more recent edit, the reverse of this command, use \\[goto-last-change-reverse]
or precede this command with \\[universal-argument] - (minus).

It does not go to the same point twice even if there has been many edits
there. I call the minimal distance between distinguishable edits \"span\".
Set variable `glc-default-span' to control how close is \"the same point\".
Default span is 8.
The span can be changed temporarily with \\[universal-argument] right before \\[goto-last-change]:
\\[universal-argument] <NUMBER> set current span to that number,
\\[universal-argument] (no number) multiplies span by 4, starting with default.
The so set span remains until it is changed again with \\[universal-argument], or the consecutive
repetition of this command is ended by any other command.

When span is zero (i.e. \\[universal-argument] 0) subsequent \\[goto-last-change] visits each and
every point of edit and a message shows what change was made there.
In this case it may go to the same point twice.

This command uses undo information. If undo is disabled, so is this command.
At times, when undo information becomes too large, the oldest information is
discarded. See variable `undo-limit'.

(fn ARG)" t) (autoload 'goto-last-change-reverse "goto-chg" "Go back to more recent changes after \\[goto-last-change] have been used.
See `goto-last-change' for use of prefix argument.

(fn ARG)" t) (register-definition-prefixes "goto-chg" '("glc-")) (provide 'goto-chg-autoloads)) "evil" ((evil evil-search evil-keybindings evil-commands evil-common evil-integration evil-autoloads evil-development evil-command-window evil-pkg evil-core evil-jumps evil-maps evil-digraphs evil-vars evil-macros evil-states evil-repeat evil-ex evil-types) (register-definition-prefixes "evil-command-window" '("evil-")) (register-definition-prefixes "evil-commands" '("evil-")) (register-definition-prefixes "evil-common" '("bounds-of-evil-" "evil-" "forward-evil-")) (autoload 'evil-mode "evil" nil t) (register-definition-prefixes "evil-core" '("evil-" "turn-o")) (autoload 'evil-digraph "evil-digraphs" "Convert DIGRAPH to character or list representation.
If DIGRAPH is a list (CHAR1 CHAR2), return the corresponding character;
if DIGRAPH is a character, return the corresponding list.
Searches in `evil-digraphs-table-user' and `evil-digraphs-table'.

(fn DIGRAPH)") (register-definition-prefixes "evil-digraphs" '("evil-digraphs-table")) (register-definition-prefixes "evil-ex" '("evil-")) (register-definition-prefixes "evil-integration" '("evil-")) (register-definition-prefixes "evil-jumps" '("evil-")) (register-definition-prefixes "evil-macros" '("evil-")) (register-definition-prefixes "evil-maps" '("evil-")) (register-definition-prefixes "evil-repeat" '("evil-")) (register-definition-prefixes "evil-search" '("evil-")) (register-definition-prefixes "evil-states" '("evil-")) (register-definition-prefixes "evil-types" '("evil-ex-get-optional-register-and-count")) (register-definition-prefixes "evil-vars" '("evil-")) (provide 'evil-autoloads)) "evil-org" ((evil-org evil-org-autoloads evil-org-agenda) (autoload 'evil-org-mode "evil-org" "Buffer local minor mode for evil-org

This is a minor mode.  If called interactively, toggle the
`Evil-Org mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `evil-org-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "evil-org" '("evil-org-")) (register-definition-prefixes "evil-org-agenda" '("evil-org-agenda-set-keys")) (provide 'evil-org-autoloads)) "gntp" ((gntp-autoloads gntp) (autoload 'gntp-notify "gntp" "Send notification NAME with TITLE, TEXT, PRIORITY and ICON to SERVER:PORT.
PORT defaults to `gntp-server-port'

(fn NAME TITLE TEXT SERVER &optional PORT PRIORITY ICON)") (register-definition-prefixes "gntp" '("gntp-")) (provide 'gntp-autoloads)) "log4e" ((log4e log4e-autoloads) (autoload 'log4e-mode "log4e" "Major mode for browsing a buffer made by log4e.

\\<log4e-mode-map>
\\{log4e-mode-map}

(fn)" t) (autoload 'log4e:insert-start-log-quickly "log4e" "Insert logging statment for trace level log at start of current function/macro." t) (register-definition-prefixes "log4e" '("log4e")) (provide 'log4e-autoloads)) "alert" ((alert alert-autoloads) (autoload 'alert-add-rule "alert" "Programmatically add an alert configuration rule.

Normally, users should custoimze `alert-user-configuration'.
This facility is for module writers and users that need to do
things the Lisp way.

Here is a rule the author currently uses with ERC, so that the
fringe gets colored whenever people chat on BitlBee:

(alert-add-rule :status   \\='(buried visible idle)
                :severity \\='(moderate high urgent)
                :mode     \\='erc-mode
                :predicate
                #\\='(lambda (info)
                    (string-match (concat \"\\\\`[^&].*@BitlBee\\\\\\='\")
                                  (erc-format-target-and/or-network)))
                :persistent
                #\\='(lambda (info)
                    ;; If the buffer is buried, or the user has been
                    ;; idle for `alert-reveal-idle-time' seconds,
                    ;; make this alert persistent.  Normally, alerts
                    ;; become persistent after
                    ;; `alert-persist-idle-time' seconds.
                    (memq (plist-get info :status) \\='(buried idle)))
                :style \\='fringe
                :continue t)

(fn &key SEVERITY STATUS MODE CATEGORY TITLE MESSAGE PREDICATE ICON (STYLE alert-default-style) PERSISTENT CONTINUE NEVER-PERSIST APPEND)") (autoload 'alert "alert" "Alert the user that something has happened.
MESSAGE is what the user will see.  You may also use keyword
arguments to specify additional details.  Here is a full example:

(alert \"This is a message\"
       :severity \\='high            ;; The default severity is `normal'
       :title \"Title\"              ;; An optional title
       :category \\='example         ;; A symbol to identify the message
       :mode \\='text-mode           ;; Normally determined automatically
       :buffer (current-buffer)      ;; This is the default
       :data nil                     ;; Unused by alert.el itself
       :persistent nil               ;; Force the alert to be persistent;
                                     ;; it is best not to use this
       :never-persist nil            ;; Force this alert to never persist
       :id \\='my-id)                ;; Used to replace previous message of
                                     ;; the same id in styles that support it
       :style \\='fringe)            ;; Force a given style to be used;
                                     ;; this is only for debugging!
       :icon \\=\"mail-message-new\" ;; if style supports icon then add icon
                                     ;; name or path here

If no :title is given, the buffer-name of :buffer is used.  If
:buffer is nil, it is the current buffer at the point of call.

:data is an opaque value which modules can pass through to their
own styles if they wish.

Here are some more typical examples of usage:

  ;; This is the most basic form usage
  (alert \"This is an alert\")

  ;; You can adjust the severity for more important messages
  (alert \"This is an alert\" :severity \\='high)

  ;; Or decrease it for purely informative ones
  (alert \"This is an alert\" :severity \\='trivial)

  ;; Alerts can have optional titles.  Otherwise, the title is the
  ;; buffer-name of the (current-buffer) where the alert originated.
  (alert \"This is an alert\" :title \"My Alert\")

  ;; Further, alerts can have categories.  This allows users to
  ;; selectively filter on them.
  (alert \"This is an alert\" :title \"My Alert\"
         :category \\='some-category-or-other)

(fn MESSAGE &key (SEVERITY \\='normal) TITLE ICON CATEGORY BUFFER MODE DATA STYLE PERSISTENT NEVER-PERSIST ID)") (register-definition-prefixes "alert" '("alert-" "x-urgen")) (provide 'alert-autoloads)) "org-pomodoro" ((org-pomodoro org-pomodoro-pidgin org-pomodoro-autoloads) (autoload 'org-pomodoro "org-pomodoro" "Start a new pomodoro or stop the current one.

When no timer is running for `org-pomodoro` a new pomodoro is started and
the current task is clocked in.  Otherwise EMACS will ask whether we´d like to
kill the current timer, this may be a break or a running pomodoro.

(fn &optional ARG)" t) (register-definition-prefixes "org-pomodoro" '("org-pomodoro-")) (register-definition-prefixes "org-pomodoro-pidgin" '("org-pom")) (provide 'org-pomodoro-autoloads)) "queue" ((queue-autoloads queue) (register-definition-prefixes "queue" '("make-queue" "queue-")) (provide 'queue-autoloads)) "undo-tree" ((undo-tree undo-tree-autoloads) (autoload 'undo-tree-mode "undo-tree" "Toggle undo-tree mode.

With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-mode-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

This is a minor mode.  If called interactively, toggle the
`Undo-Tree mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `undo-tree-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (put 'global-undo-tree-mode 'globalized-minor-mode t) (defvar global-undo-tree-mode nil "Non-nil if Global Undo-Tree mode is enabled.
See the `global-undo-tree-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.") (custom-autoload 'global-undo-tree-mode "undo-tree" nil) (autoload 'global-undo-tree-mode "undo-tree" "Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global Undo-Tree mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.

See `undo-tree-mode' for more information on Undo-Tree mode.

(fn &optional ARG)" t) (register-definition-prefixes "undo-tree" '("*undo-tree-id-counter*" "buffer-undo-tree" "turn-on-undo-tree-mode" "undo-")) (provide 'undo-tree-autoloads)) "dash" ((dash-autoloads dash) (autoload 'dash-fontify-mode "dash" "Toggle fontification of Dash special variables.

Dash-Fontify mode is a buffer-local minor mode intended for Emacs
Lisp buffers.  Enabling it causes the special variables bound in
anaphoric Dash macros to be fontified.  These anaphoras include
`it', `it-index', `acc', and `other'.  In older Emacs versions
which do not dynamically detect macros, Dash-Fontify mode
additionally fontifies Dash macro calls.

See also `dash-fontify-mode-lighter' and
`global-dash-fontify-mode'.

This is a minor mode.  If called interactively, toggle the
`Dash-Fontify mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `dash-fontify-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (put 'global-dash-fontify-mode 'globalized-minor-mode t) (defvar global-dash-fontify-mode nil "Non-nil if Global Dash-Fontify mode is enabled.
See the `global-dash-fontify-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-dash-fontify-mode'.") (custom-autoload 'global-dash-fontify-mode "dash" nil) (autoload 'global-dash-fontify-mode "dash" "Toggle Dash-Fontify mode in all buffers.
With prefix ARG, enable Global Dash-Fontify mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Dash-Fontify mode is enabled in all buffers where
`dash--turn-on-fontify-mode' would do it.

See `dash-fontify-mode' for more information on Dash-Fontify mode.

(fn &optional ARG)" t) (autoload 'dash-register-info-lookup "dash" "Register the Dash Info manual with `info-lookup-symbol'.
This allows Dash symbols to be looked up with \\[info-lookup-symbol]." t) (register-definition-prefixes "dash" '("!cdr" "!cons" "--" "->" "-a" "-butlast" "-c" "-d" "-e" "-f" "-gr" "-i" "-juxt" "-keep" "-l" "-m" "-no" "-o" "-p" "-r" "-s" "-t" "-u" "-value-to-list" "-when-let" "-zip" "dash-")) (provide 'dash-autoloads)) "eyebrowse" ((eyebrowse eyebrowse-autoloads) (autoload 'eyebrowse-setup-evil-keys "eyebrowse" "Set up key bindings specific to Evil.
Currently only gt, gT, gc and zx are supported.") (autoload 'eyebrowse-setup-opinionated-keys "eyebrowse" "Set up more opinionated key bindings for using eyebrowse.

M-0..M-9, C-< / C->, C-'and C-\" are used for switching.  If
IGNORE-EVIL isn't set and Evil is detected, extra key bindings
will be set up with `eyebrowse-setup-evil-keys' as well.

(fn &optional IGNORE-EVIL)") (defvar eyebrowse-mode nil "Non-nil if Eyebrowse mode is enabled.
See the `eyebrowse-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `eyebrowse-mode'.") (custom-autoload 'eyebrowse-mode "eyebrowse" nil) (autoload 'eyebrowse-mode "eyebrowse" "Toggle `eyebrowse-mode'.

This global minor mode provides a set of keybindings for
switching window configurations.  It tries mimicking the tab
behaviour of `ranger`, a file manager.

This is a global minor mode.  If called interactively, toggle the
`Eyebrowse mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='eyebrowse-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "eyebrowse" '("eyebrowse-")) (provide 'eyebrowse-autoloads)) "evil-leader" ((evil-leader evil-leader-autoloads) (autoload 'global-evil-leader-mode "evil-leader" "Global minor mode for <leader> support.

This is a minor mode.  If called interactively, toggle the
`Global Evil-Leader mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `global-evil-leader-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'evil-leader-mode "evil-leader" "Minor mode to enable <leader> support.

This is a minor mode.  If called interactively, toggle the
`Evil-Leader mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `evil-leader-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'evil-leader/set-key "evil-leader" "Bind `key' to command `def' in `evil-leader/default-map'.

Key has to be readable by `read-kbd-macro' and `def' a command.
Accepts further `key' `def' pairs.

(fn KEY DEF &rest BINDINGS)" t) (autoload 'evil-leader/set-key-for-mode "evil-leader" "Create keybindings for major-mode `mode' with `key' bound to command `def'.

See `evil-leader/set-key'.

(fn MODE KEY DEF &rest BINDINGS)" t) (register-definition-prefixes "evil-leader" '("evil-leader")) (provide 'evil-leader-autoloads)) "which-key" ((which-key-autoloads which-key) (defvar which-key-mode nil "Non-nil if Which-Key mode is enabled.
See the `which-key-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `which-key-mode'.") (custom-autoload 'which-key-mode "which-key" nil) (autoload 'which-key-mode "which-key" "Toggle which-key-mode.

This is a global minor mode.  If called interactively, toggle the
`Which-Key mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='which-key-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'which-key-setup-side-window-right "which-key" "Apply suggested settings for side-window that opens on right." t) (autoload 'which-key-setup-side-window-right-bottom "which-key" "Apply suggested settings for side-window that opens on right
if there is space and the bottom otherwise." t) (autoload 'which-key-setup-side-window-bottom "which-key" "Apply suggested settings for side-window that opens on bottom." t) (autoload 'which-key-setup-minibuffer "which-key" "Apply suggested settings for minibuffer.
Do not use this setup if you use the paging commands. Instead use
`which-key-setup-side-window-bottom', which is nearly identical
but more functional." t) (autoload 'which-key-add-keymap-based-replacements "which-key" "Replace the description of KEY using REPLACEMENT in KEYMAP.
KEY should take a format suitable for use in `kbd'. REPLACEMENT
should be a cons cell of the form (STRING . COMMAND) for each
REPLACEMENT, where STRING is the replacement string and COMMAND
is a symbol corresponding to the intended command to be
replaced. COMMAND can be nil if the binding corresponds to a key
prefix. An example is

(which-key-add-keymap-based-replacements global-map
  \"C-x w\" \\='(\"Save as\" . write-file)).

For backwards compatibility, REPLACEMENT can also be a string,
but the above format is preferred, and the option to use a string
for REPLACEMENT will eventually be removed.

(fn KEYMAP KEY REPLACEMENT &rest MORE)") (autoload 'which-key-add-key-based-replacements "which-key" "Replace the description of KEY-SEQUENCE with REPLACEMENT.
KEY-SEQUENCE is a string suitable for use in `kbd'. REPLACEMENT
may either be a string, as in

(which-key-add-key-based-replacements \"C-x 1\" \"maximize\")

a cons of two strings as in

(which-key-add-key-based-replacements \"C-x 8\"
                                        \\='(\"unicode\" . \"Unicode keys\"))

or a function that takes a (KEY . BINDING) cons and returns a
replacement.

In the second case, the second string is used to provide a longer
name for the keys under a prefix.

MORE allows you to specifcy additional KEY REPLACEMENT pairs.  All
replacements are added to `which-key-replacement-alist'.

(fn KEY-SEQUENCE REPLACEMENT &rest MORE)") (autoload 'which-key-add-major-mode-key-based-replacements "which-key" "Functions like `which-key-add-key-based-replacements'.
The difference is that MODE specifies the `major-mode' that must
be active for KEY-SEQUENCE and REPLACEMENT (MORE contains
addition KEY-SEQUENCE REPLACEMENT pairs) to apply.

(fn MODE KEY-SEQUENCE REPLACEMENT &rest MORE)") (autoload 'which-key-reload-key-sequence "which-key" "Simulate entering the key sequence KEY-SEQ.
KEY-SEQ should be a list of events as produced by
`listify-key-sequence'. If nil, KEY-SEQ defaults to
`which-key--current-key-list'. Any prefix arguments that were
used are reapplied to the new key sequence.

(fn &optional KEY-SEQ)") (autoload 'which-key-show-standard-help "which-key" "Call the command in `which-key--prefix-help-cmd-backup'.
Usually this is `describe-prefix-bindings'.

(fn &optional _)" t) (autoload 'which-key-show-next-page-no-cycle "which-key" "Show next page of keys unless on the last page, in which case
call `which-key-show-standard-help'." t) (autoload 'which-key-show-previous-page-no-cycle "which-key" "Show previous page of keys unless on the first page, in which
case do nothing." t) (autoload 'which-key-show-next-page-cycle "which-key" "Show the next page of keys, cycling from end to beginning
after last page.

(fn &optional _)" t) (autoload 'which-key-show-previous-page-cycle "which-key" "Show the previous page of keys, cycling from beginning to end
after first page.

(fn &optional _)" t) (autoload 'which-key-show-top-level "which-key" "Show top-level bindings.

(fn &optional _)" t) (autoload 'which-key-show-major-mode "which-key" "Show top-level bindings in the map of the current major mode.

This function will also detect evil bindings made using
`evil-define-key' in this map. These bindings will depend on the
current evil state. 

(fn &optional ALL)" t) (autoload 'which-key-show-full-major-mode "which-key" "Show all bindings in the map of the current major mode.

This function will also detect evil bindings made using
`evil-define-key' in this map. These bindings will depend on the
current evil state. " t) (autoload 'which-key-dump-bindings "which-key" "Dump bindings from PREFIX into buffer named BUFFER-NAME.

PREFIX should be a string suitable for `kbd'.

(fn PREFIX BUFFER-NAME)" t) (autoload 'which-key-undo-key "which-key" "Undo last keypress and force which-key update.

(fn &optional _)" t) (autoload 'which-key-C-h-dispatch "which-key" "Dispatch C-h commands by looking up key in
`which-key-C-h-map'. This command is always accessible (from any
prefix) if `which-key-use-C-h-commands' is non nil." t) (autoload 'which-key-show-keymap "which-key" "Show the top-level bindings in KEYMAP using which-key.
KEYMAP is selected interactively from all available keymaps.

If NO-PAGING is non-nil, which-key will not intercept subsequent
keypresses for the paging functionality.

(fn KEYMAP &optional NO-PAGING)" t) (autoload 'which-key-show-full-keymap "which-key" "Show all bindings in KEYMAP using which-key.
KEYMAP is selected interactively from all available keymaps.

(fn KEYMAP)" t) (autoload 'which-key-show-minor-mode-keymap "which-key" "Show the top-level bindings in KEYMAP using which-key.
KEYMAP is selected interactively by mode in
`minor-mode-map-alist'.

(fn &optional ALL)" t) (autoload 'which-key-show-full-minor-mode-keymap "which-key" "Show all bindings in KEYMAP using which-key.
KEYMAP is selected interactively by mode in
`minor-mode-map-alist'." t) (register-definition-prefixes "which-key" '("evil-state" "which-key-")) (provide 'which-key-autoloads)) "yasnippet" ((yasnippet-autoloads yasnippet) (autoload 'yas-minor-mode "yasnippet" "Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

This is a minor mode.  If called interactively, toggle the `yas
minor mode' mode.  If the prefix argument is positive, enable the
mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `yas-minor-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (put 'yas-global-mode 'globalized-minor-mode t) (defvar yas-global-mode nil "Non-nil if Yas-Global mode is enabled.
See the `yas-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.") (custom-autoload 'yas-global-mode "yasnippet" nil) (autoload 'yas-global-mode "yasnippet" "Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive; otherwise,
disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Yas minor mode is enabled in all buffers where `yas-minor-mode-on'
would do it.

See `yas-minor-mode' for more information on Yas minor mode.

(fn &optional ARG)" t) (autoload 'snippet-mode "yasnippet" "A mode for editing yasnippets" t nil) (register-definition-prefixes "yasnippet" '("help-snippet-def" "snippet-mode-map" "yas")) (provide 'yasnippet-autoloads)) "visual-fill-column" ((visual-fill-column visual-fill-column-autoloads) (autoload 'visual-fill-column-mode "visual-fill-column" "Wrap lines according to `fill-column' in `visual-line-mode'.

This is a minor mode.  If called interactively, toggle the
`Visual-Fill-Column mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `visual-fill-column-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (put 'global-visual-fill-column-mode 'globalized-minor-mode t) (defvar global-visual-fill-column-mode nil "Non-nil if Global Visual-Fill-Column mode is enabled.
See the `global-visual-fill-column-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-visual-fill-column-mode'.") (custom-autoload 'global-visual-fill-column-mode "visual-fill-column" nil) (autoload 'global-visual-fill-column-mode "visual-fill-column" "Toggle Visual-Fill-Column mode in all buffers.
With prefix ARG, enable Global Visual-Fill-Column mode if ARG is
positive; otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Visual-Fill-Column mode is enabled in all buffers where
`turn-on-visual-fill-column-mode' would do it.

See `visual-fill-column-mode' for more information on
Visual-Fill-Column mode.

(fn &optional ARG)" t) (autoload 'visual-fill-column-split-window-sensibly "visual-fill-column" "Split WINDOW sensibly, unsetting its margins first.
This function unsets the window margins and calls
`split-window-sensibly'.

By default, `split-window-sensibly' does not split a window in
two side-by-side windows if it has wide margins, even if there is
enough space for a vertical split.  This function is used as the
value of `split-window-preferred-function' to allow
`display-buffer' to split such windows.

(fn &optional WINDOW)") (register-definition-prefixes "visual-fill-column" '("turn-on-visual-fill-column-mode" "visual-fill-column-")) (provide 'visual-fill-column-autoloads)) "company" ((company-files company-oddmuse company-elisp company-nxml company-dabbrev company-abbrev company company-tempo company-keywords company-clang company-semantic company-gtags company-bbdb company-etags company-css company-tng company-dabbrev-code company-template company-cmake company-capf company-ispell company-autoloads company-yasnippet) (autoload 'company-mode "company" "\"complete anything\"; is an in-buffer completion framework.

Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

This is a minor mode.  If called interactively, toggle the
`Company mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `company-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (put 'global-company-mode 'globalized-minor-mode t) (defvar global-company-mode nil "Non-nil if Global Company mode is enabled.
See the `global-company-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.") (custom-autoload 'global-company-mode "company" nil) (autoload 'global-company-mode "company" "Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Company mode is enabled in all buffers where `company-mode-on' would
do it.

See `company-mode' for more information on Company mode.

(fn &optional ARG)" t) (autoload 'company-manual-begin "company" nil t) (autoload 'company-complete "company" "Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted." t) (register-definition-prefixes "company" '("company-")) (autoload 'company-abbrev "company-abbrev" "`company-mode' completion backend for abbrev.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-abbrev" '("company-abbrev-insert")) (autoload 'company-bbdb "company-bbdb" "`company-mode' completion backend for BBDB.

(fn COMMAND &optional ARG &rest IGNORE)" t) (register-definition-prefixes "company-bbdb" '("company-bbdb-")) (register-definition-prefixes "company-capf" '("company-")) (register-definition-prefixes "company-clang" '("company-clang")) (register-definition-prefixes "company-cmake" '("company-cmake")) (autoload 'company-css "company-css" "`company-mode' completion backend for `css-mode'.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-css" '("company-css-")) (autoload 'company-dabbrev "company-dabbrev" "dabbrev-like `company-mode' completion backend.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-dabbrev" '("company-dabbrev-")) (autoload 'company-dabbrev-code "company-dabbrev-code" "dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-dabbrev-code" '("company-dabbrev-code-")) (autoload 'company-elisp "company-elisp" "`company-mode' completion backend for Emacs Lisp.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-elisp" '("company-elisp-")) (autoload 'company-etags "company-etags" "`company-mode' completion backend for etags.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-etags" '("company-etags-")) (autoload 'company-files "company-files" "`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-files" '("company-file")) (autoload 'company-gtags "company-gtags" "`company-mode' completion backend for GNU Global.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-gtags" '("company-gtags-")) (autoload 'company-ispell "company-ispell" "`company-mode' completion backend using Ispell.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-ispell" '("company-ispell-")) (autoload 'company-keywords "company-keywords" "`company-mode' backend for programming language keywords.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-keywords" '("company-keywords-")) (autoload 'company-nxml "company-nxml" "`company-mode' completion backend for `nxml-mode'.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-nxml" '("company-nxml-")) (autoload 'company-oddmuse "company-oddmuse" "`company-mode' completion backend for `oddmuse-mode'.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-oddmuse" '("company-oddmuse-")) (autoload 'company-semantic "company-semantic" "`company-mode' completion backend using CEDET Semantic.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-semantic" '("company-semantic-")) (register-definition-prefixes "company-template" '("company-template-")) (autoload 'company-tempo "company-tempo" "`company-mode' completion backend for tempo.

(fn COMMAND &optional ARG &rest IGNORED)" t) (register-definition-prefixes "company-tempo" '("company-tempo-")) (autoload 'company-tng-frontend "company-tng" "When the user changes the selection at least once, this
frontend will display the candidate in the buffer as if it's
already there and any key outside of `company-active-map' will
confirm the selection and finish the completion.

(fn COMMAND)") (define-obsolete-function-alias 'company-tng-configure-default 'company-tng-mode "0.9.14" "Applies the default configuration to enable company-tng.") (defvar company-tng-mode nil "Non-nil if Company-Tng mode is enabled.
See the `company-tng-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `company-tng-mode'.") (custom-autoload 'company-tng-mode "company-tng" nil) (autoload 'company-tng-mode "company-tng" "This minor mode enables `company-tng-frontend'.

This is a global minor mode.  If called interactively, toggle the
`Company-Tng mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='company-tng-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "company-tng" '("company-tng-")) (autoload 'company-yasnippet "company-yasnippet" "`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook \\='js-mode-hook
            (lambda ()
              (set (make-local-variable \\='company-backends)
                   \\='((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push \\='(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") \\='company-yasnippet)

(fn COMMAND &optional ARG &rest IGNORE)" t) (register-definition-prefixes "company-yasnippet" '("company-yasnippet-")) (provide 'company-autoloads)) "compat" ((compat-27 compat-macs compat-29 compat compat-tests compat-autoloads compat-28 compat-26 compat-25) (register-definition-prefixes "compat" '("compat-")) (register-definition-prefixes "compat-macs" '("compat-")) (register-definition-prefixes "compat-tests" '("compat-tests--" "should-equal")) (provide 'compat-autoloads)) "vertico" ((vertico vertico-autoloads) (defvar vertico-mode nil "Non-nil if Vertico mode is enabled.
See the `vertico-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `vertico-mode'.") (custom-autoload 'vertico-mode "vertico" nil) (autoload 'vertico-mode "vertico" "VERTical Interactive COmpletion.

This is a global minor mode.  If called interactively, toggle the
`Vertico mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='vertico-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "vertico" '("vertico-")) (provide 'vertico-autoloads)) "marginalia" ((marginalia-autoloads marginalia) (defvar marginalia-mode nil "Non-nil if Marginalia mode is enabled.
See the `marginalia-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `marginalia-mode'.") (custom-autoload 'marginalia-mode "marginalia" nil) (autoload 'marginalia-mode "marginalia" "Annotate completion candidates with richer information.

This is a global minor mode.  If called interactively, toggle the
`Marginalia mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='marginalia-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'marginalia-cycle "marginalia" "Cycle between annotators in `marginalia-annotator-registry'." t) (register-definition-prefixes "marginalia" '("marginalia-")) (provide 'marginalia-autoloads)) "orderless" ((orderless-autoloads orderless) (autoload 'orderless-filter "orderless" "Split STRING into components and find entries TABLE matching all.
The predicate PRED is used to constrain the entries in TABLE.

(fn STRING TABLE &optional PRED)") (autoload 'orderless-all-completions "orderless" "Split STRING into components and find entries TABLE matching all.
The predicate PRED is used to constrain the entries in TABLE.  The
matching portions of each candidate are highlighted.
This function is part of the `orderless' completion style.

(fn STRING TABLE PRED POINT)") (autoload 'orderless-try-completion "orderless" "Complete STRING to unique matching entry in TABLE.
This uses `orderless-all-completions' to find matches for STRING
in TABLE among entries satisfying PRED.  If there is only one
match, it completes to that match.  If there are no matches, it
returns nil.  In any other case it \"completes\" STRING to
itself, without moving POINT.
This function is part of the `orderless' completion style.

(fn STRING TABLE PRED POINT)") (add-to-list 'completion-styles-alist '(orderless orderless-try-completion orderless-all-completions "Completion of multiple components, in any order.")) (autoload 'orderless-ivy-re-builder "orderless" "Convert STR into regexps for use with ivy.
This function is for integration of orderless with ivy, use it as
a value in `ivy-re-builders-alist'.

(fn STR)") (register-definition-prefixes "orderless" '("orderless-")) (provide 'orderless-autoloads)) "consult" ((consult-flymake consult-org consult-kmacro consult-xref consult-register consult-autoloads consult-info consult consult-compile consult-imenu) (autoload 'consult-completion-in-region "consult" "Use minibuffer completion as the UI for `completion-at-point'.

The function is called with 4 arguments: START END COLLECTION PREDICATE.
The arguments and expected return value are as specified for
`completion-in-region'.  Use as a value for `completion-in-region-function'.

The function can be configured via `consult-customize'.

    (consult-customize consult-completion-in-region
                       :completion-styles (basic)
                       :cycle-threshold 3)

These configuration options are supported:

    * :cycle-threshold - Cycling threshold (def: `completion-cycle-threshold')
    * :completion-styles - Use completion styles (def: `completion-styles')
    * :require-match - Require matches when completing (def: nil)
    * :prompt - The prompt string shown in the minibuffer

(fn START END COLLECTION &optional PREDICATE)") (autoload 'consult-outline "consult" "Jump to an outline heading, obtained by matching against `outline-regexp'.

This command supports narrowing to a heading level and candidate preview.
The symbol at point is added to the future history." t) (autoload 'consult-mark "consult" "Jump to a marker in MARKERS list (defaults to buffer-local `mark-ring').

The command supports preview of the currently selected marker position.
The symbol at point is added to the future history.

(fn &optional MARKERS)" t) (autoload 'consult-global-mark "consult" "Jump to a marker in MARKERS list (defaults to `global-mark-ring').

The command supports preview of the currently selected marker position.
The symbol at point is added to the future history.

(fn &optional MARKERS)" t) (autoload 'consult-line "consult" "Search for a matching line.

Depending on the setting `consult-point-placement' the command
jumps to the beginning or the end of the first match on the line
or the line beginning.  The default candidate is the non-empty
line next to point.  This command obeys narrowing.  Optional
INITIAL input can be provided.  The search starting point is
changed if the START prefix argument is set.  The symbol at point
and the last `isearch-string' is added to the future history.

(fn &optional INITIAL START)" t) (autoload 'consult-line-multi "consult" "Search for a matching line in multiple buffers.

By default search across all project buffers.  If the prefix
argument QUERY is non-nil, all buffers are searched.  Optional
INITIAL input can be provided.  The symbol at point and the last
`isearch-string' is added to the future history.In order to
search a subset of buffers, QUERY can be set to a plist according
to `consult--buffer-query'.

(fn QUERY &optional INITIAL)" t) (autoload 'consult-keep-lines "consult" "Select a subset of the lines in the current buffer with live preview.

The selected lines are kept and the other lines are deleted.  When called
interactively, the lines selected are those that match the minibuffer input.  In
order to match the inverse of the input, prefix the input with `! '.  When
called from Elisp, the filtering is performed by a FILTER function.  This
command obeys narrowing.

FILTER is the filter function.
INITIAL is the initial input.

(fn FILTER &optional INITIAL)" t) (autoload 'consult-focus-lines "consult" "Hide or show lines using overlays.

The selected lines are shown and the other lines hidden.  When called
interactively, the lines selected are those that match the minibuffer input.  In
order to match the inverse of the input, prefix the input with `! '.  With
optional prefix argument SHOW reveal the hidden lines.  Alternatively the
command can be restarted to reveal the lines.  When called from Elisp, the
filtering is performed by a FILTER function.  This command obeys narrowing.

FILTER is the filter function.
INITIAL is the initial input.

(fn FILTER &optional SHOW INITIAL)" t) (autoload 'consult-goto-line "consult" "Read line number and jump to the line with preview.

Enter either a line number to jump to the first column of the
given line or line:column in order to jump to a specific column.
Jump directly if a line number is given as prefix ARG.  The
command respects narrowing and the settings
`consult-goto-line-numbers' and `consult-line-numbers-widen'.

(fn &optional ARG)" t) (autoload 'consult-recent-file "consult" "Find recent file using `completing-read'." t) (autoload 'consult-mode-command "consult" "Run a command from any of the given MODES.

If no MODES are specified, use currently active major and minor modes.

(fn &rest MODES)" t) (autoload 'consult-yank-from-kill-ring "consult" "Select STRING from the kill ring and insert it.
With prefix ARG, put point at beginning, and mark at end, like `yank' does.

This command behaves like `yank-from-kill-ring' in Emacs 28, which also offers
a `completing-read' interface to the `kill-ring'.  Additionally the Consult
version supports preview of the selected string.

(fn STRING &optional ARG)" t) (autoload 'consult-yank-pop "consult" "If there is a recent yank act like `yank-pop'.

Otherwise select string from the kill ring and insert it.
See `yank-pop' for the meaning of ARG.

This command behaves like `yank-pop' in Emacs 28, which also offers a
`completing-read' interface to the `kill-ring'.  Additionally the Consult
version supports preview of the selected string.

(fn &optional ARG)" t) (autoload 'consult-yank-replace "consult" "Select STRING from the kill ring.

If there was no recent yank, insert the string.
Otherwise replace the just-yanked string with the selected string.

There exists no equivalent of this command in Emacs 28.

(fn STRING)" t) (autoload 'consult-bookmark "consult" "If bookmark NAME exists, open it, otherwise create a new bookmark with NAME.

The command supports preview of file bookmarks and narrowing.  See the
variable `consult-bookmark-narrow' for the narrowing configuration.

(fn NAME)" t) (autoload 'consult-complex-command "consult" "Select and evaluate command from the command history.

This command can act as a drop-in replacement for `repeat-complex-command'." t) (autoload 'consult-history "consult" "Insert string from HISTORY of current buffer.
In order to select from a specific HISTORY, pass the history
variable as argument.  INDEX is the name of the index variable to
update, if any.  BOL is the function which jumps to the beginning
of the prompt.  See also `cape-history' from the Cape package.

(fn &optional HISTORY INDEX BOL)" t) (autoload 'consult-isearch-history "consult" "Read a search string with completion from the Isearch history.

This replaces the current search string if Isearch is active, and
starts a new Isearch session otherwise." t) (autoload 'consult-minor-mode-menu "consult" "Enable or disable minor mode.

This is an alternative to `minor-mode-menu-from-indicator'." t) (autoload 'consult-theme "consult" "Disable current themes and enable THEME from `consult-themes'.

The command supports previewing the currently selected theme.

(fn THEME)" t) (autoload 'consult-buffer "consult" "Enhanced `switch-to-buffer' command with support for virtual buffers.

The command supports recent files, bookmarks, views and project files as
virtual buffers.  Buffers are previewed.  Narrowing to buffers (b), files (f),
bookmarks (m) and project files (p) is supported via the corresponding
keys.  In order to determine the project-specific files and buffers, the
`consult-project-function' is used.  The virtual buffer SOURCES
default to `consult-buffer-sources'.  See `consult--multi' for the
configuration of the virtual buffer sources.

(fn &optional SOURCES)" t) (autoload 'consult-project-buffer "consult" "Enhanced `project-switch-to-buffer' command with support for virtual buffers.
The command may prompt you for a project directory if it is invoked from
outside a project.  See `consult-buffer' for more details." t) (autoload 'consult-buffer-other-window "consult" "Variant of `consult-buffer' which opens in other window." t) (autoload 'consult-buffer-other-frame "consult" "Variant of `consult-buffer' which opens in other frame." t) (autoload 'consult-grep "consult" "Search with `grep' for files in DIR where the content matches a regexp.

The initial input is given by the INITIAL argument.  DIR can be
nil, a directory string or a list of file/directory paths.  If
`consult-grep' is called interactively with a prefix argument,
the user can specify the directories or files to search in.
Multiple directories must be separated by comma in the
minibuffer, since they are read via `completing-read-multiple'.
By default the project directory is used if
`consult-project-function' is defined and returns non-nil.
Otherwise the `default-directory' is searched.

The input string is split, the first part of the string (grep
input) is passed to the asynchronous grep process and the second
part of the string is passed to the completion-style filtering.

The input string is split at a punctuation character, which is
given as the first character of the input string.  The format is
similar to Perl-style regular expressions, e.g., /regexp/.
Furthermore command line options can be passed to grep, specified
behind --.  The overall prompt input has the form
`#async-input -- grep-opts#filter-string'.

Note that the grep input string is transformed from Emacs regular
expressions to Posix regular expressions.  Always enter Emacs
regular expressions at the prompt.  `consult-grep' behaves like
builtin Emacs search commands, e.g., Isearch, which take Emacs
regular expressions.  Furthermore the asynchronous input split
into words, each word must match separately and in any order.
See `consult--regexp-compiler' for the inner workings.  In order
to disable transformations of the grep input, adjust
`consult--regexp-compiler' accordingly.

Here we give a few example inputs:

#alpha beta         : Search for alpha and beta in any order.
#alpha.*beta        : Search for alpha before beta.
#\\(alpha\\|beta\\) : Search for alpha or beta (Note Emacs syntax!)
#word -- -C3        : Search for word, include 3 lines as context
#first#second       : Search for first, quick filter for second.

The symbol at point is added to the future history.

(fn &optional DIR INITIAL)" t) (autoload 'consult-git-grep "consult" "Search with `git grep' for files in DIR with INITIAL input.
See `consult-grep' for details.

(fn &optional DIR INITIAL)" t) (autoload 'consult-ripgrep "consult" "Search with `rg' for files in DIR with INITIAL input.
See `consult-grep' for details.

(fn &optional DIR INITIAL)" t) (autoload 'consult-find "consult" "Search for files in DIR matching input regexp given INITIAL input.
See `consult-grep' for details regarding the asynchronous search
and the arguments.

(fn &optional DIR INITIAL)" t) (autoload 'consult-locate "consult" "Search with `locate' for files which match input given INITIAL input.

The input is treated literally such that locate can take advantage of
the locate database index.  Regular expressions would often force a slow
linear search through the entire database.  The locate process is started
asynchronously, similar to `consult-grep'.  See `consult-grep' for more
details regarding the asynchronous search.

(fn &optional INITIAL)" t) (autoload 'consult-man "consult" "Search for man page given INITIAL input.

The input string is not preprocessed and passed literally to the
underlying man commands.  The man process is started asynchronously,
similar to `consult-grep'.  See `consult-grep' for more details regarding
the asynchronous search.

(fn &optional INITIAL)" t) (register-definition-prefixes "consult" '("consult-")) (autoload 'consult-compile-error "consult-compile" "Jump to a compilation error in the current buffer.

This command collects entries from compilation buffers and grep
buffers related to the current buffer.  The command supports
preview of the currently selected error." t) (register-definition-prefixes "consult-compile" '("consult-compile--")) (autoload 'consult-flymake "consult-flymake" "Jump to Flymake diagnostic.
When PROJECT is non-nil then prompt with diagnostics from all
buffers in the current project instead of just the current buffer.

(fn &optional PROJECT)" t) (register-definition-prefixes "consult-flymake" '("consult-flymake--")) (autoload 'consult-imenu "consult-imenu" "Select item from flattened `imenu' using `completing-read' with preview.

The command supports preview and narrowing.  See the variable
`consult-imenu-config', which configures the narrowing.
The symbol at point is added to the future history.

See also `consult-imenu-multi'." t) (autoload 'consult-imenu-multi "consult-imenu" "Select item from the imenus of all buffers from the same project.

In order to determine the buffers belonging to the same project, the
`consult-project-function' is used.  Only the buffers with the
same major mode as the current buffer are used.  See also
`consult-imenu' for more details.  In order to search a subset of buffers,
QUERY can be set to a plist according to `consult--buffer-query'.

(fn &optional QUERY)" t) (register-definition-prefixes "consult-imenu" '("consult-imenu-")) (autoload 'consult-info "consult-info" "Full text search through info MANUALS.

(fn &rest MANUALS)" t) (register-definition-prefixes "consult-info" '("consult-info--")) (autoload 'consult-kmacro "consult-kmacro" "Run a chosen keyboard macro.

With prefix ARG, run the macro that many times.
Macros containing mouse clicks are omitted.

(fn ARG)" t) (register-definition-prefixes "consult-kmacro" '("consult-kmacro--")) (autoload 'consult-org-heading "consult-org" "Jump to an Org heading.

MATCH and SCOPE are as in `org-map-entries' and determine which
entries are offered.  By default, all entries of the current
buffer are offered.

(fn &optional MATCH SCOPE)" t) (autoload 'consult-org-agenda "consult-org" "Jump to an Org agenda heading.

By default, all agenda entries are offered.  MATCH is as in
`org-map-entries' and can used to refine this.

(fn &optional MATCH)" t) (register-definition-prefixes "consult-org" '("consult-org--")) (autoload 'consult-register-window "consult-register" "Enhanced drop-in replacement for `register-preview'.

BUFFER is the window buffer.
SHOW-EMPTY must be t if the window should be shown for an empty register list.

(fn BUFFER &optional SHOW-EMPTY)") (autoload 'consult-register-format "consult-register" "Enhanced preview of register REG.
This function can be used as `register-preview-function'.
If COMPLETION is non-nil format the register for completion.

(fn REG &optional COMPLETION)") (autoload 'consult-register "consult-register" "Load register and either jump to location or insert the stored text.

This command is useful to search the register contents.  For quick access
to registers it is still recommended to use the register functions
`consult-register-load' and `consult-register-store' or the built-in
built-in register access functions.  The command supports narrowing, see
`consult-register--narrow'.  Marker positions are previewed.  See
`jump-to-register' and `insert-register' for the meaning of prefix ARG.

(fn &optional ARG)" t) (autoload 'consult-register-load "consult-register" "Do what I mean with a REG.

For a window configuration, restore it.  For a number or text, insert it.
For a location, jump to it.  See `jump-to-register' and `insert-register'
for the meaning of prefix ARG.

(fn REG &optional ARG)" t) (autoload 'consult-register-store "consult-register" "Store register dependent on current context, showing an action menu.

With an active region, store/append/prepend the contents, optionally
deleting the region when a prefix ARG is given.  With a numeric prefix
ARG, store or add the number.  Otherwise store point, frameset, window or
kmacro.

(fn ARG)" t) (register-definition-prefixes "consult-register" '("consult-register-")) (autoload 'consult-xref "consult-xref" "Show xrefs with preview in the minibuffer.

This function can be used for `xref-show-xrefs-function'.
See `xref-show-xrefs-function' for the description of the
FETCHER and ALIST arguments.

(fn FETCHER &optional ALIST)") (register-definition-prefixes "consult-xref" '("consult-xref--")) (provide 'consult-autoloads)) "leuven-theme" ((leuven-theme-autoloads leuven-dark-theme leuven-theme) (autoload 'leuven-dark-scale-font "leuven-dark-theme" "Function for splicing optional font heights into face descriptions.
CONTROL can be a number, nil, or t.  When t, use DEFAULT-HEIGHT.

(fn CONTROL DEFAULT-HEIGHT)") (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "leuven-dark-theme" '("leuven-dark")) (autoload 'leuven-scale-font "leuven-theme" "Function for splicing optional font heights into face descriptions.
CONTROL can be a number, nil, or t.  When t, use DEFAULT-HEIGHT.

(fn CONTROL DEFAULT-HEIGHT)") (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "leuven-theme" '("leuven")) (provide 'leuven-theme-autoloads)) "ef-themes" ((ef-duo-dark-theme ef-autumn-theme ef-duo-light-theme ef-symbiosis-theme ef-tritanopia-dark-theme ef-light-theme ef-themes-autoloads ef-tritanopia-light-theme ef-dark-theme ef-elea-light-theme ef-deuteranopia-dark-theme ef-deuteranopia-light-theme theme-loaddefs ef-night-theme ef-cherie-theme \.dir-locals ef-kassio-theme ef-day-theme ef-trio-dark-theme ef-frost-theme ef-summer-theme ef-winter-theme ef-trio-light-theme ef-cyprus-theme ef-bio-theme ef-themes ef-spring-theme ef-elea-dark-theme) (autoload 'ef-themes-select "ef-themes" "Load an Ef THEME using minibuffer completion.

With optional VARIANT as a prefix argument, prompt to limit the
set of themes to either dark or light variants.

Run `ef-themes-post-load-hook' after loading the theme.

When called from Lisp, THEME is the symbol of a theme.  VARIANT
is ignored in this scenario.

(fn THEME &optional VARIANT)" t) (autoload 'ef-themes-select-light "ef-themes" "Load a light Ef THEME.
Run `ef-themes-post-load-hook' after loading the theme.

Also see `ef-themes-select-dark'.

This command is the same as `ef-themes-select' except it only
prompts for light themes when called interactively.  Calling it
from Lisp behaves the same as `ef-themes-select' for the THEME
argument, meaning that it loads the Ef THEME regardless of
whether it is light or dark.

(fn THEME)" t) (autoload 'ef-themes-select-dark "ef-themes" "Load a dark Ef THEME.
Run `ef-themes-post-load-hook' after loading the theme.

Also see `ef-themes-select-light'.

This command is the same as `ef-themes-select' except it only
prompts for dark themes when called interactively.  Calling it
from Lisp behaves the same as `ef-themes-select' for the THEME
argument, meaning that it loads the Ef THEME regardless of
whether it is light or dark.

(fn THEME)" t) (autoload 'ef-themes-toggle "ef-themes" "Toggle between the two `ef-themes-to-toggle'.
If `ef-themes-to-toggle' does not specify two Ef themes, inform
the user about it while prompting with completion for a theme
among our collection (this is practically the same as the
`ef-themes-select' command).

Run `ef-themes-post-load-hook' after loading the theme." t) (autoload 'ef-themes-load-random "ef-themes" "Load an Ef theme at random, excluding the current one.

With optional VARIANT as a prefix argument, prompt to limit the
set of themes to either dark or light variants.

Run `ef-themes-post-load-hook' after loading the theme.

When called from Lisp, VARIANT is either the `dark' or `light'
symbol.

(fn &optional VARIANT)" t) (autoload 'ef-themes-theme "ef-themes" "Bind NAME's color PALETTE around face specs and variables.
Face specifications are passed to `custom-theme-set-faces'.
While variables are handled by `custom-theme-set-variables'.
Those are stored in `ef-themes-faces' and
`ef-themes-custom-variables' respectively.

Optional OVERRIDES are appended to PALETTE, overriding
corresponding entries.

(fn NAME PALETTE &optional OVERRIDES)" nil t) (function-put 'ef-themes-theme 'lisp-indent-function 0) (when load-file-name (let ((dir (file-name-directory load-file-name))) (unless (file-equal-p dir (expand-file-name "themes/" data-directory)) (add-to-list 'custom-theme-load-path dir)))) (register-definition-prefixes "ef-themes" '("ef-themes-")) (provide 'ef-themes-autoloads)) "dracula-theme" ((dracula-theme dracula-theme-autoloads) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dracula-theme" '("dracula-")) (provide 'dracula-theme-autoloads)) "autothemer" ((autothemer-autoloads autothemer) (autoload 'autothemer-deftheme "autothemer" "Define a theme NAME with description DESCRIPTION.
A color PALETTE can be used to define `let*'-like
bindings within both the REDUCED-SPECS and the BODY.

(fn NAME DESCRIPTION PALETTE REDUCED-SPECS &rest BODY)" nil t) (autoload 'autothemer-insert-missing-face "autothemer" "Insert a face spec template for an unthemed face.
An approximate color from the palette will be used for
color attributes." t) (autoload 'autothemer-insert-missing-faces "autothemer" "Insert face spec templates for unthemed faces matching REGEXP.
An error is shown when no current theme is available.

(fn &optional REGEXP)" t) (autoload 'autothemer-generate-templates-filtered "autothemer" "Autogenerate customizations for unthemed faces matching REGEXP.

Calls `autothemer-generate-templates' after user provides REGEXP interactively.

(fn REGEXP)" t) (autoload 'autothemer-generate-templates "autothemer" "Autogenerate customizations for unthemed faces (optionally by REGEXP).

Generate customizations that approximate current face definitions using the
nearest colors in the color palette of `autothemer-current-theme'.

An error is shown when no current theme is available.

(fn &optional REGEXP)" t) (register-definition-prefixes "autothemer" '("autothemer-")) (provide 'autothemer-autoloads)) "parchment-theme" ((parchment-theme parchment-theme-autoloads) (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "parchment-theme" '("parchment")) (provide 'parchment-theme-autoloads)) "cloud-theme" ((cloud-theme cloud-theme-autoloads) (autoload 'cloud-theme-mode-line "cloud-theme" "Customize mode line to cloud style." t) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "cloud-theme" '("cloud" "defcloudline")) (provide 'cloud-theme-autoloads)) "moe-theme" ((moe-dark-theme moe-theme-flavours moe-light-theme moe-theme moe-theme-switcher moe-theme-autoloads) (register-definition-prefixes "moe-dark-theme" '("moe-dark")) (register-definition-prefixes "moe-light-theme" '("moe-light")) (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "moe-theme" '("moe-")) (register-definition-prefixes "moe-theme-flavours" '("moe-theme-")) (register-definition-prefixes "moe-theme-switcher" '("convert-time-format-of-sunrise-and-sunset" "get-sunrise-sunset-string" "moe-" "switch-")) (provide 'moe-theme-autoloads)) "zenburn-theme" ((zenburn-theme-autoloads zenburn-theme) (defvar zenburn-override-colors-alist 'nil "Place to override default theme colors.

You can override a subset of the theme's default colors by
defining them in this alist.") (custom-autoload 'zenburn-override-colors-alist "zenburn-theme" t) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "zenburn-theme" '("zenburn")) (provide 'zenburn-theme-autoloads)) "monokai-theme" ((monokai-theme monokai-theme-autoloads) (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "monokai-theme" '("monokai")) (provide 'monokai-theme-autoloads)) "gruvbox-theme" ((gruvbox-theme gruvbox-light-hard-theme gruvbox-theme-autoloads gruvbox gruvbox-light-soft-theme gruvbox-dark-medium-theme gruvbox-light-medium-theme gruvbox-dark-hard-theme gruvbox-dark-soft-theme) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "gruvbox" '("gruvbox-")) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (provide 'gruvbox-theme-autoloads)) "ample-theme" ((ample-flat-theme ample-light-theme ample-theme ample-theme-autoloads) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (autoload 'ample-flat-theme "ample-flat-theme" "Apply the ample-flat-theme." t) (register-definition-prefixes "ample-flat-theme" '("ample-flat")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (autoload 'ample-light-theme "ample-light-theme" "Apply the ample-light-theme." t) (register-definition-prefixes "ample-light-theme" '("ample-light")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (autoload 'ample-theme "ample-theme" "Apply the ample-theme." t) (register-definition-prefixes "ample-theme" '("ample")) (provide 'ample-theme-autoloads)) "ample-zen-theme" ((ample-zen-theme ample-zen-theme-autoloads) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (add-to-list 'safe-local-eval-forms '(when (require 'rainbow-mode nil t) (rainbow-mode 1))) (register-definition-prefixes "ample-zen-theme" '("ample-zen")) (provide 'ample-zen-theme-autoloads)) "alect-themes" ((alect-light-alt-theme alect-themes-autoloads alect-light-theme alect-black-theme alect-dark-alt-theme alect-black-alt-theme alect-themes alect-dark-theme) (autoload 'alect-generate-colors "alect-themes" "Return alist of themes suitable for the variable `alect-colors'.

THEME-NAMES is a list of symbols.

COLORS is a list of lists (COLOR-NAME COLOR-VAL...) where
COLOR-VAL is a color for specified theme (theme names and color
values should be in matching order).

(fn THEME-NAMES COLORS)") (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "alect-themes" '("alect-")) (provide 'alect-themes-autoloads)) "tao-theme" ((tao-yin-theme tao-theme-emacs-autoloads tao-theme-pkg tao-theme-emacs-pkg tao-yang-theme tao-theme tao-theme-autoloads) (register-definition-prefixes "tao-theme" '("tao-")) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "tao-yang-theme" '("tao-yang")) (and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "tao-yin-theme" '("tao-yin")) (provide 'tao-theme-autoloads)) "poet-theme" ((poet-monochrome-theme poet-dark-monochrome-theme poet-theme poet-dark-theme poet-theme-autoloads) (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "poet-dark-monochrome-theme" '("poet-")) (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "poet-dark-theme" '("poet-")) (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "poet-monochrome-theme" '("poet-")) (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "poet-theme" '("poet")) (provide 'poet-theme-autoloads)) "modus-themes" ((modus-vivendi-theme modus-vivendi-tritanopia-theme modus-vivendi-deuteranopia-theme theme-loaddefs modus-themes modus-operandi-tritanopia-theme modus-operandi-theme modus-themes-autoloads modus-vivendi-tinted-theme modus-operandi-deuteranopia-theme modus-operandi-tinted-theme) (autoload 'modus-themes-contrast "modus-themes" "Measure WCAG contrast ratio between C1 and C2.
C1 and C2 are color values written in hexadecimal RGB.

(fn C1 C2)") (autoload 'modus-themes-select "modus-themes" "Load a Modus THEME using minibuffer completion.
Run `modus-themes-after-load-theme-hook' after loading the theme.
Disable other themes per `modus-themes-disable-other-themes'.

(fn THEME)" t) (autoload 'modus-themes-toggle "modus-themes" "Toggle between the two `modus-themes-to-toggle'.
If `modus-themes-to-toggle' does not specify two Modus themes,
prompt with completion for a theme among our collection (this is
practically the same as the `modus-themes-select' command).

Run `modus-themes-after-load-theme-hook' after loading the theme.
Disable other themes per `modus-themes-disable-other-themes'." t) (autoload 'modus-themes-theme "modus-themes" "Bind NAME's color PALETTE around face specs and variables.
Face specifications are passed to `custom-theme-set-faces'.
While variables are handled by `custom-theme-set-variables'.
Those are stored in `modus-themes-faces' and
`modus-themes-custom-variables' respectively.

Optional OVERRIDES are appended to PALETTE, overriding
corresponding entries.

(fn NAME PALETTE &optional OVERRIDES)" nil t) (function-put 'modus-themes-theme 'lisp-indent-function 0) (when load-file-name (let ((dir (file-name-directory load-file-name))) (unless (equal dir (expand-file-name "themes/" data-directory)) (add-to-list 'custom-theme-load-path dir)))) (register-definition-prefixes "modus-themes" '("modus-themes-")) (provide 'modus-themes-autoloads)) "faff-theme" ((faff-theme faff-theme-autoloads) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "faff-theme" '("faff")) (provide 'faff-theme-autoloads)) "color-theme-modern" ((hober-theme digital-ofs1-theme andreas-theme retro-orange-theme dark-laptop-theme mistyday-theme julie-theme dark-info-theme greiner-theme montz-theme high-contrast-theme oswald-theme bharadwaj-theme subtle-blue-theme ryerson-theme dark-green-theme euphoria-theme infodoc-theme salmon-font-lock-theme aalto-light-theme classic-theme bharadwaj-slate-theme subdued-theme arjen-theme dark-gnus-theme aliceblue-theme salmon-diff-theme simple-1-theme word-perfect-theme sitaramv-nt-theme shaman-theme dark-blue2-theme sitaramv-solaris-theme parus-theme charcoal-black-theme comidia-theme pok-wob-theme lawrence-theme subtle-hacker-theme calm-forest-theme gtk-ide-theme pierson-theme taylor-theme blue-gnus-theme blue-erc-theme renegade-theme dark-erc-theme aalto-dark-theme gnome2-theme tty-dark-theme jsc-light-theme color-theme-modern-pkg gnome-theme billw-theme blue-sea-theme xemacs-theme xp-theme midnight-theme lethe-theme rotor-theme feng-shui-theme jonadabian-slate-theme dark-blue-theme taming-mr-arneson-theme railscast-theme fischmeister-theme emacs-21-theme jsc-dark-theme jedit-grey-theme gray30-theme marine-theme snow-theme pok-wog-theme katester-theme cobalt-theme marquardt-theme beige-diff-theme jb-simple-theme blue-eshell-theme vim-colors-theme desert-theme standard-ediff-theme color-theme-modern wheat-theme blippblopp-theme standard-theme resolve-theme jonadabian-theme clarity-theme black-on-gray-theme matrix-theme ramangalahy-theme goldenrod-theme scintilla-theme raspopovic-theme deep-blue-theme ld-dark-theme late-night-theme robin-hood-theme color-theme-modern-autoloads dark-font-lock-theme retro-green-theme gray1-theme emacs-nw-theme kingsajz-theme jsc-light2-theme beige-eshell-theme whateveryouwant-theme snowish-theme blue-mood-theme) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "aalto-dark-theme" '("aalto-dark")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "aalto-light-theme" '("aalto-light")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "aliceblue-theme" '("aliceblue")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "andreas-theme" '("andreas")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "arjen-theme" '("arjen")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "beige-diff-theme" '("beige-diff")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "beige-eshell-theme" '("beige-eshell")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "bharadwaj-slate-theme" '("bharadwaj-slate")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "bharadwaj-theme" '("bharadwaj")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "billw-theme" '("billw")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "black-on-gray-theme" '("black-on-gray")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "blippblopp-theme" '("blippblopp")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "blue-erc-theme" '("blue-erc")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "blue-eshell-theme" '("blue-eshell")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "blue-gnus-theme" '("blue-gnus")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "blue-mood-theme" '("blue-mood")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "blue-sea-theme" '("blue-sea")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "calm-forest-theme" '("calm-forest")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "charcoal-black-theme" '("charcoal-black")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "clarity-theme" '("clarity")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "classic-theme" '("classic")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "cobalt-theme" '("cobalt")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "comidia-theme" '("comidia")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dark-blue-theme" '("dark-blue")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dark-blue2-theme" '("dark-blue2")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dark-erc-theme" '("dark-erc")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dark-font-lock-theme" '("dark-font-lock")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dark-gnus-theme" '("dark-gnus")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dark-green-theme" '("dark-green")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dark-info-theme" '("dark-info")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "dark-laptop-theme" '("dark-laptop")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "deep-blue-theme" '("deep-blue")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "desert-theme" '("desert")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "digital-ofs1-theme" '("digital-ofs1")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "emacs-21-theme" '("emacs-21")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "emacs-nw-theme" '("emacs-nw")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "euphoria-theme" '("euphoria")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "feng-shui-theme" '("feng-shui")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "fischmeister-theme" '("fischmeister")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "gnome-theme" '("gnome")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "gnome2-theme" '("gnome2")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "goldenrod-theme" '("goldenrod")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "gray1-theme" '("gray1")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "gray30-theme" '("gray30")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "greiner-theme" '("greiner")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "gtk-ide-theme" '("gtk-ide")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "high-contrast-theme" '("high-contrast")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "hober-theme" '("hober")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "infodoc-theme" '("infodoc")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "jb-simple-theme" '("jb-simple")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "jedit-grey-theme" '("jedit-grey")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "jonadabian-slate-theme" '("jonadabian-slate")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "jonadabian-theme" '("jonadabian")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "jsc-dark-theme" '("jsc-dark")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "jsc-light-theme" '("jsc-light")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "jsc-light2-theme" '("jsc-light2")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "julie-theme" '("julie")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "katester-theme" '("katester")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "kingsajz-theme" '("kingsajz")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "late-night-theme" '("late-night")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "lawrence-theme" '("lawrence")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "ld-dark-theme" '("ld-dark")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "lethe-theme" '("lethe")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "marine-theme" '("marine")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "marquardt-theme" '("marquardt")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "matrix-theme" '("matrix")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "midnight-theme" '("midnight")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "mistyday-theme" '("mistyday")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "montz-theme" '("montz")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "oswald-theme" '("oswald")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "parus-theme" '("parus")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "pierson-theme" '("pierson")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "pok-wob-theme" '("pok-wob")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "pok-wog-theme" '("pok-wog")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "railscast-theme" '("railscast")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "ramangalahy-theme" '("ramangalahy")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "raspopovic-theme" '("raspopovic")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "renegade-theme" '("renegade")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "resolve-theme" '("resolve")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "retro-green-theme" '("retro-green")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "retro-orange-theme" '("retro-orange")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "robin-hood-theme" '("robin-hood")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "rotor-theme" '("rotor")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "ryerson-theme" '("ryerson")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "salmon-diff-theme" '("salmon-diff")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "salmon-font-lock-theme" '("salmon-font-lock")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "scintilla-theme" '("scintilla")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "shaman-theme" '("shaman")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "simple-1-theme" '("simple-1")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "sitaramv-nt-theme" '("sitaramv-nt")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "sitaramv-solaris-theme" '("sitaramv-solaris")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "snow-theme" '("snow")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "snowish-theme" '("snowish")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "standard-ediff-theme" '("standard-ediff")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "standard-theme" '("standard")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "subdued-theme" '("subdued")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "subtle-blue-theme" '("subtle-blue")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "subtle-hacker-theme" '("subtle-hacker")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "taming-mr-arneson-theme" '("taming-mr-arneson")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "taylor-theme" '("taylor")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "tty-dark-theme" '("tty-dark")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "vim-colors-theme" '("vim-colors")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "whateveryouwant-theme" '("whateveryouwant")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "wheat-theme" '("wheat")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "word-perfect-theme" '("word-perfect")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "xemacs-theme" '("xemacs")) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "xp-theme" 'nil) (provide 'color-theme-modern-autoloads)) "solarized-theme" ((solarized-gruvbox-dark-theme solarized-dark-high-contrast-theme solarized-selenized-white-theme solarized-wombat-dark-theme solarized-selenized-dark-theme solarized-light-high-contrast-theme solarized-theme-autoloads solarized-gruvbox-light-theme solarized-light-theme solarized-palettes solarized-theme-utils solarized-zenburn-theme solarized solarized-dark-theme solarized-faces solarized-selenized-black-theme solarized-theme solarized-selenized-light-theme) (autoload 'solarized-color-blend "solarized" "Blends COLOR1 onto COLOR2 with ALPHA.

COLOR1 and COLOR2 should be color names (e.g. \"white\") or RGB
triplet strings (e.g. \"#ff12ec\").

Alpha should be a float between 0 and 1.

Optional argument DIGITS-PER-COMPONENT can be either 4 (the default) or 2;
use the latter if you need a 24-bit specification of a color.

(fn COLOR1 COLOR2 ALPHA &optional DIGITS-PER-COMPONENT)") (autoload 'solarized-create-color-palette "solarized" "Create color-palette from CORE-PALETTE.

The Returned color-palette has the same format as `solarized-color-palette'

(fn CORE-PALETTE)") (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "solarized" '("solarized-")) (register-definition-prefixes "solarized-dark-high-contrast-theme" '("solarized-dark-high-contrast")) (register-definition-prefixes "solarized-dark-theme" '("solarized-dark")) (register-definition-prefixes "solarized-faces" '("solarized-definition")) (register-definition-prefixes "solarized-gruvbox-dark-theme" '("solarized-gruvbox-dark")) (register-definition-prefixes "solarized-gruvbox-light-theme" '("solarized-gruvbox-light")) (register-definition-prefixes "solarized-light-high-contrast-theme" '("solarized-light-high-contrast")) (register-definition-prefixes "solarized-light-theme" '("solarized-light")) (register-definition-prefixes "solarized-palettes" '("solarized-")) (register-definition-prefixes "solarized-selenized-black-theme" '("solarized-selenized-black")) (register-definition-prefixes "solarized-selenized-dark-theme" '("solarized-selenized-dark")) (register-definition-prefixes "solarized-selenized-light-theme" '("solarized-selenized-light")) (register-definition-prefixes "solarized-selenized-white-theme" '("solarized-selenized-white")) (register-definition-prefixes "solarized-theme-utils" '("solarized-import-faces")) (register-definition-prefixes "solarized-wombat-dark-theme" '("solarized-wombat-dark")) (register-definition-prefixes "solarized-zenburn-theme" '("solarized-zenburn")) (provide 'solarized-theme-autoloads)) "beacon" ((beacon beacon-autoloads) (autoload 'beacon-blink "beacon" "Blink the beacon at the position of the cursor.
Unlike `beacon-blink-automated', the beacon will blink
unconditionally (even if `beacon-mode' is disabled), and this can
be invoked as a user command or called from Lisp code." t) (defvar beacon-mode nil "Non-nil if Beacon mode is enabled.
See the `beacon-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `beacon-mode'.") (custom-autoload 'beacon-mode "beacon" nil) (autoload 'beacon-mode "beacon" "Toggle Beacon mode on or off.

This is a global minor mode.  If called interactively, toggle the
`Beacon mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='beacon-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "beacon" '("beacon-")) (provide 'beacon-autoloads)) "nerd-icons" ((nerd-icons-data nerd-icons-autoloads nerd-icons-faces nerd-icons) (autoload 'nerd-icons-install-fonts "nerd-icons" "Helper function to download and install the latests fonts based on OS.
The provided Nerd Font is Symbols Nerd Font Mono.
When PFX is non-nil, ignore the prompt and just install

(fn &optional PFX)" t) (autoload 'nerd-icons-insert "nerd-icons" "Interactive icon insertion function.
When Prefix ARG is non-nil, insert the propertized icon.
When GLYPH-SET is non-nil, limit the candidates to the icon set matching it.

(fn &optional ARG GLYPH-SET)" t) (autoload 'nerd-icons-icon-for-dir "nerd-icons" "Get the formatted icon for DIR.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

(fn DIR &rest ARG-OVERRIDES)") (autoload 'nerd-icons-icon-for-file "nerd-icons" "Get the formatted icon for FILE.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

(fn FILE &rest ARG-OVERRIDES)") (autoload 'nerd-icons-icon-for-extension "nerd-icons" "Get the formatted icon for EXT.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

(fn EXT &rest ARG-OVERRIDES)") (autoload 'nerd-icons-icon-for-mode "nerd-icons" "Get the formatted icon for MODE.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

(fn MODE &rest ARG-OVERRIDES)") (autoload 'nerd-icons-icon-for-url "nerd-icons" "Get the formatted icon for URL.
If an icon for URL isn't found in `nerd-icons-url-alist', a globe is used.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

(fn URL &rest ARG-OVERRIDES)") (autoload 'nerd-icons-icon-for-buffer "nerd-icons" "Get the formatted icon for the current buffer.

This function prioritises the use of the buffers file extension to
discern the icon when its `major-mode' matches its auto mode,
otherwise it will use the buffers `major-mode' to decide its
icon.") (register-definition-prefixes "nerd-icons" '("nerd-icons-")) (provide 'nerd-icons-autoloads)) "s" ((s-autoloads s) (register-definition-prefixes "s" '("s-")) (provide 's-autoloads)) "f" ((f-shortdoc f f-autoloads) (register-definition-prefixes "f" '("f-")) (provide 'f-autoloads)) "shrink-path" ((shrink-path-autoloads shrink-path) (register-definition-prefixes "shrink-path" '("shrink-path-")) (provide 'shrink-path-autoloads)) "doom-modeline" ((doom-modeline doom-modeline-core doom-modeline-env doom-modeline-segments doom-modeline-autoloads) (autoload 'doom-modeline-set-main-modeline "doom-modeline" "Set main mode-line.
If DEFAULT is non-nil, set the default mode-line for all buffers.

(fn &optional DEFAULT)") (defvar doom-modeline-mode nil "Non-nil if Doom-Modeline mode is enabled.
See the `doom-modeline-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `doom-modeline-mode'.") (custom-autoload 'doom-modeline-mode "doom-modeline" nil) (autoload 'doom-modeline-mode "doom-modeline" "Toggle `doom-modeline' on or off.

This is a global minor mode.  If called interactively, toggle the
`Doom-Modeline mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='doom-modeline-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "doom-modeline" '("doom-modeline-")) (register-definition-prefixes "doom-modeline-core" '("doom-modeline")) (autoload 'doom-modeline-env-setup-python "doom-modeline-env") (autoload 'doom-modeline-env-setup-ruby "doom-modeline-env") (autoload 'doom-modeline-env-setup-perl "doom-modeline-env") (autoload 'doom-modeline-env-setup-go "doom-modeline-env") (autoload 'doom-modeline-env-setup-elixir "doom-modeline-env") (autoload 'doom-modeline-env-setup-rust "doom-modeline-env") (register-definition-prefixes "doom-modeline-env" '("doom-modeline-")) (register-definition-prefixes "doom-modeline-segments" '("doom-modeline-")) (provide 'doom-modeline-autoloads)) "org-superstar" ((org-superstar-autoloads org-superstar) (put 'org-superstar-leading-bullet 'safe-local-variable #'char-or-string-p) (autoload 'org-superstar-toggle-lightweight-lists "org-superstar" "Toggle syntax checking for plain list items.

Disabling syntax checking will cause Org Superstar to display
lines looking like plain lists (for example in code) like plain
lists.  However, this may cause significant speedup for org files
containing several hundred list items." t) (autoload 'org-superstar-mode "org-superstar" "Use UTF8 bullets for headlines and plain lists.

This is a minor mode.  If called interactively, toggle the
`Org-Superstar mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `org-superstar-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "org-superstar" '("org-superstar-")) (provide 'org-superstar-autoloads)) "parsebib" ((parsebib-autoloads parsebib) (register-definition-prefixes "parsebib" '("parsebib-")) (provide 'parsebib-autoloads)) "let-alist" ((let-alist let-alist-autoloads) (autoload 'let-alist "let-alist" "Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq \\='title alist)))
        (.body  (cdr (assq \\='body alist)))
        (.site  (cdr (assq \\='site alist)))
        (.site.contents (cdr (assq \\='contents (cdr (assq \\='site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one.  You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

(fn ALIST &rest BODY)" nil t) (function-put 'let-alist 'lisp-indent-function 1) (register-definition-prefixes "let-alist" '("let-alist--")) (provide 'let-alist-autoloads)) "biblio-core" ((biblio-core-autoloads biblio-core) (autoload 'biblio-lookup "biblio-core" "Perform a search using BACKEND, and QUERY.
Prompt for any missing or nil arguments.  BACKEND should be a
function obeying the interface described in the docstring of
`biblio-backends'.  Returns the buffer in which results will be
inserted.

(fn &optional BACKEND QUERY)" t) (register-definition-prefixes "biblio-core" '("biblio-")) (provide 'biblio-core-autoloads)) "biblio" ((biblio-doi biblio-dissemin biblio-hal biblio biblio-download biblio-pkg biblio-arxiv biblio-dblp biblio-ieee biblio-autoloads biblio-crossref) (autoload 'biblio-arxiv-backend "biblio-arxiv" "A arXiv backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

(fn COMMAND &optional ARG &rest MORE)") (add-hook 'biblio-init-hook #'biblio-arxiv-backend) (autoload 'biblio-arxiv-lookup "biblio-arxiv" "Start an arXiv search for QUERY, prompting if needed.

(fn &optional QUERY)" t) (defalias 'arxiv-lookup 'biblio-arxiv-lookup) (register-definition-prefixes "biblio-arxiv" '("biblio-arxiv-")) (autoload 'biblio-crossref-backend "biblio-crossref" "A CrossRef backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

(fn COMMAND &optional ARG &rest MORE)") (add-hook 'biblio-init-hook #'biblio-crossref-backend) (autoload 'biblio-crossref-lookup "biblio-crossref" "Start a CrossRef search for QUERY, prompting if needed.

(fn &optional QUERY)" t) (defalias 'crossref-lookup 'biblio-crossref-lookup) (register-definition-prefixes "biblio-crossref" '("biblio-crossref-")) (autoload 'biblio-dblp-backend "biblio-dblp" "A DBLP backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

(fn COMMAND &optional ARG &rest MORE)") (add-hook 'biblio-init-hook #'biblio-dblp-backend) (autoload 'biblio-dblp-lookup "biblio-dblp" "Start a DBLP search for QUERY, prompting if needed.

(fn &optional QUERY)" t) (defalias 'dblp-lookup 'biblio-dblp-lookup) (register-definition-prefixes "biblio-dblp" '("biblio-dblp--")) (autoload 'biblio-dissemin-lookup "biblio-dissemin" "Retrieve a record by DOI from Dissemin, and display it.
Interactively, or if CLEANUP is non-nil, pass DOI through
`biblio-cleanup-doi'.

(fn DOI &optional CLEANUP)" t) (defalias 'dissemin-lookup 'biblio-dissemin-lookup) (autoload 'biblio-dissemin--register-action "biblio-dissemin" "Add Dissemin to list of `biblio-selection-mode' actions.") (add-hook 'biblio-selection-mode-hook #'biblio-dissemin--register-action) (register-definition-prefixes "biblio-dissemin" '("biblio-dissemin--")) (autoload 'biblio-doi-insert-bibtex "biblio-doi" "Insert BibTeX entry matching DOI.

(fn DOI)" t) (register-definition-prefixes "biblio-doi" '("biblio-doi-" "doi-insert-bibtex")) (autoload 'biblio-download--register-action "biblio-download" "Add download to list of `biblio-selection-mode' actions.") (add-hook 'biblio-selection-mode-hook #'biblio-download--register-action) (register-definition-prefixes "biblio-download" '("biblio-download-")) (autoload 'biblio-hal-backend "biblio-hal" "A HAL backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

(fn COMMAND &optional ARG &rest MORE)") (add-hook 'biblio-init-hook #'biblio-hal-backend) (autoload 'biblio-hal-lookup "biblio-hal" "Start a HAL search for QUERY, prompting if needed.

(fn &optional QUERY)" t) (defalias 'hal-lookup 'biblio-hal-lookup) (register-definition-prefixes "biblio-hal" '("biblio-hal--")) (autoload 'biblio-ieee-backend "biblio-ieee" "A IEEE Xplore backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

(fn COMMAND &optional ARG &rest MORE)") (add-hook 'biblio-init-hook #'biblio-ieee-backend) (autoload 'biblio-ieee-lookup "biblio-ieee" "Start a IEEE search for QUERY, prompting if needed.

(fn &optional QUERY)" t) (defalias 'ieee-lookup 'biblio-ieee-lookup) (register-definition-prefixes "biblio-ieee" '("biblio-ieee--")) (provide 'biblio-autoloads)) "bibtex-completion" ((bibtex-completion-autoloads bibtex-completion) (put 'bibtex-completion-bibliography 'safe-local-variable 'stringp) (put 'bibtex-completion-notes-global-mode 'globalized-minor-mode t) (defvar bibtex-completion-notes-global-mode nil "Non-nil if Bibtex-Completion-Notes-Global mode is enabled.
See the `bibtex-completion-notes-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `bibtex-completion-notes-global-mode'.") (custom-autoload 'bibtex-completion-notes-global-mode "bibtex-completion" nil) (autoload 'bibtex-completion-notes-global-mode "bibtex-completion" "Toggle Bibtex-Completion-Notes mode in all buffers.
With prefix ARG, enable Bibtex-Completion-Notes-Global mode if ARG is
positive; otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Bibtex-Completion-Notes mode is enabled in all buffers where
`bibtex-completion-notes-mode' would do it.

See `bibtex-completion-notes-mode' for more information on
Bibtex-Completion-Notes mode.

(fn &optional ARG)" t) (register-definition-prefixes "bibtex-completion" '("bibtex-completion-")) (provide 'bibtex-completion-autoloads)) "ivy" ((ivy-overlay ivy-faces ivy-autoloads colir ivy elpa) (register-definition-prefixes "colir" '("colir-")) (autoload 'ivy-resume "ivy" "Resume the last completion session, or SESSION if non-nil.
With a prefix arg, try to restore a recorded completion session,
if one exists.

(fn &optional SESSION)" t) (autoload 'ivy-read "ivy" "Read a string in the minibuffer, with completion.

PROMPT is a string, normally ending in a colon and a space.
`ivy-count-format' is prepended to PROMPT during completion.

COLLECTION is either a list of strings, a function, an alist, or
a hash table, supplied for `minibuffer-completion-table'.

PREDICATE is applied to filter out the COLLECTION immediately.
This argument is for compatibility with `completing-read'.

When REQUIRE-MATCH is non-nil, only members of COLLECTION can be
selected. In can also be a lambda.

If INITIAL-INPUT is non-nil, then insert that input in the
minibuffer initially.

HISTORY is a name of a variable to hold the completion session
history.

KEYMAP is composed with `ivy-minibuffer-map'.

PRESELECT, when non-nil, determines which one of the candidates
matching INITIAL-INPUT to select initially.  An integer stands
for the position of the desired candidate in the collection,
counting from zero.  Otherwise, use the first occurrence of
PRESELECT in the collection.  Comparison is first done with
`equal'.  If that fails, and when applicable, match PRESELECT as
a regular expression.

DEF is for compatibility with `completing-read'.

UPDATE-FN is called each time the candidate list is re-displayed.

When SORT is non-nil, `ivy-sort-functions-alist' determines how
to sort candidates before displaying them.

ACTION is a function to call after selecting a candidate.
It takes one argument, the selected candidate. If COLLECTION is
an alist, the argument is a cons cell, otherwise it's a string.

MULTI-ACTION, when non-nil, is called instead of ACTION when
there are marked candidates. It takes the list of candidates as
its only argument. When it's nil, ACTION is called on each marked
candidate.

UNWIND is a function of no arguments to call before exiting.

RE-BUILDER is a function transforming input text into a regex
pattern.

MATCHER is a function which can override how candidates are
filtered based on user input.  It takes a regex pattern and a
list of candidates, and returns the list of matching candidates.

DYNAMIC-COLLECTION is a boolean specifying whether the list of
candidates is updated after each input by calling COLLECTION.

EXTRA-PROPS is a plist that can be used to store
collection-specific session-specific data.

CALLER is a symbol to uniquely identify the caller to `ivy-read'.
It is used, along with COLLECTION, to determine which
customizations apply to the current completion session.

(fn PROMPT COLLECTION &key PREDICATE REQUIRE-MATCH INITIAL-INPUT HISTORY PRESELECT DEF KEYMAP UPDATE-FN SORT ACTION MULTI-ACTION UNWIND RE-BUILDER MATCHER DYNAMIC-COLLECTION EXTRA-PROPS CALLER)") (autoload 'ivy-completing-read "ivy" "Read a string in the minibuffer, with completion.

This interface conforms to `completing-read' and can be used for
`completing-read-function'.

PROMPT is a string that normally ends in a colon and a space.
COLLECTION is either a list of strings, an alist, an obarray, or a hash table.
PREDICATE limits completion to a subset of COLLECTION.
REQUIRE-MATCH is a boolean value or a symbol.  See `completing-read'.
INITIAL-INPUT is a string inserted into the minibuffer initially.
HISTORY is a list of previously selected inputs.
DEF is the default value.
INHERIT-INPUT-METHOD is currently ignored.

(fn PROMPT COLLECTION &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HISTORY DEF INHERIT-INPUT-METHOD)") (defvar ivy-mode nil "Non-nil if ivy mode is enabled.
See the `ivy-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ivy-mode'.") (custom-autoload 'ivy-mode "ivy" nil) (autoload 'ivy-mode "ivy" "Toggle Ivy mode on or off.
Turn Ivy mode on if ARG is positive, off otherwise.
Turning on Ivy mode sets `completing-read-function' to
`ivy-completing-read'.

Global bindings:
\\{ivy-mode-map}

Minibuffer bindings:
\\{ivy-minibuffer-map}

(fn &optional ARG)" t) (autoload 'ivy-switch-buffer "ivy" "Switch to another buffer." t) (autoload 'ivy-switch-view "ivy" "Switch to one of the window views stored by `ivy-push-view'." t) (autoload 'ivy-switch-buffer-other-window "ivy" "Switch to another buffer in another window." t) (register-definition-prefixes "ivy" '("ivy-" "with-ivy-window")) (register-definition-prefixes "ivy-overlay" '("ivy-")) (provide 'ivy-autoloads)) "ivy-bibtex" ((ivy-bibtex-autoloads ivy-bibtex) (autoload 'ivy-bibtex "ivy-bibtex" "Search BibTeX entries using ivy.

With a prefix ARG the cache is invalidated and the bibliography
reread.

If LOCAL-BIB is non-nil, display that the BibTeX entries are read
from the local bibliography.  This is set internally by
`ivy-bibtex-with-local-bibliography'.

(fn &optional ARG LOCAL-BIB)" t) (autoload 'ivy-bibtex-with-local-bibliography "ivy-bibtex" "Search BibTeX entries with local bibliography.

With a prefix ARG the cache is invalidated and the bibliography
reread.

(fn &optional ARG)" t) (autoload 'ivy-bibtex-with-notes "ivy-bibtex" "Search BibTeX entries with notes.

With a prefix ARG the cache is invalidated and the bibliography
reread.

(fn &optional ARG)" t) (register-definition-prefixes "ivy-bibtex" '("ivy-bibtex-")) (provide 'ivy-bibtex-autoloads)) "htmlize" ((htmlize-autoloads htmlize) (autoload 'htmlize-buffer "htmlize" "Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

(fn &optional BUFFER)" t) (autoload 'htmlize-region "htmlize" "Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

(fn BEG END)" t) (autoload 'htmlize-file "htmlize" "Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

(fn FILE &optional TARGET)" t) (autoload 'htmlize-many-files "htmlize" "Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

(fn FILES &optional TARGET-DIRECTORY)" t) (autoload 'htmlize-many-files-dired "htmlize" "HTMLize dired-marked files.

(fn ARG &optional TARGET-DIRECTORY)" t) (register-definition-prefixes "htmlize" '("htmlize-")) (provide 'htmlize-autoloads)) "lv" ((lv lv-autoloads) (register-definition-prefixes "lv" '("lv-")) (provide 'lv-autoloads)) "hydra" ((hydra-autoloads hydra-examples hydra-ox hydra) (autoload 'defhydra "hydra" "Create a Hydra - a family of functions with prefix NAME.

NAME should be a symbol, it will be the prefix of all functions
defined here.

BODY has the format:

    (BODY-MAP BODY-KEY &rest BODY-PLIST)

DOCSTRING will be displayed in the echo area to identify the
Hydra.  When DOCSTRING starts with a newline, special Ruby-style
substitution will be performed by `hydra--format'.

Functions are created on basis of HEADS, each of which has the
format:

    (KEY CMD &optional HINT &rest PLIST)

BODY-MAP is a keymap; `global-map' is used quite often.  Each
function generated from HEADS will be bound in BODY-MAP to
BODY-KEY + KEY (both are strings passed to `kbd'), and will set
the transient map so that all following heads can be called
though KEY only.  BODY-KEY can be an empty string.

CMD is a callable expression: either an interactive function
name, or an interactive lambda, or a single sexp (it will be
wrapped in an interactive lambda).

HINT is a short string that identifies its head.  It will be
printed beside KEY in the echo erea if `hydra-is-helpful' is not
nil.  If you don't even want the KEY to be printed, set HINT
explicitly to nil.

The heads inherit their PLIST from BODY-PLIST and are allowed to
override some keys.  The keys recognized are :exit, :bind, and :column.
:exit can be:

- nil (default): this head will continue the Hydra state.
- t: this head will stop the Hydra state.

:bind can be:
- nil: this head will not be bound in BODY-MAP.
- a lambda taking KEY and CMD used to bind a head.

:column is a string that sets the column for all subsequent heads.

It is possible to omit both BODY-MAP and BODY-KEY if you don't
want to bind anything.  In that case, typically you will bind the
generated NAME/body command.  This command is also the return
result of `defhydra'.

(fn NAME BODY &optional DOCSTRING &rest HEADS)" nil t) (function-put 'defhydra 'lisp-indent-function 'defun) (function-put 'defhydra 'doc-string-elt 3) (register-definition-prefixes "hydra" '("defhydra" "hydra-")) (register-definition-prefixes "hydra-examples" '("hydra-" "org-agenda-cts" "whitespace-mode")) (register-definition-prefixes "hydra-ox" '("hydra-ox")) (provide 'hydra-autoloads)) "avy" ((avy-autoloads avy) (autoload 'avy-process "avy" "Select one of CANDIDATES using `avy-read'.
Use OVERLAY-FN to visualize the decision overlay.
CLEANUP-FN should take no arguments and remove the effects of
multiple OVERLAY-FN invocations.

(fn CANDIDATES &optional OVERLAY-FN CLEANUP-FN)") (autoload 'avy-goto-char "avy" "Jump to the currently visible CHAR.
The window scope is determined by `avy-all-windows' (ARG negates it).

(fn CHAR &optional ARG)" t) (autoload 'avy-goto-char-in-line "avy" "Jump to the currently visible CHAR in the current line.

(fn CHAR)" t) (autoload 'avy-goto-char-2 "avy" "Jump to the currently visible CHAR1 followed by CHAR2.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

(fn CHAR1 CHAR2 &optional ARG BEG END)" t) (autoload 'avy-goto-char-2-above "avy" "Jump to the currently visible CHAR1 followed by CHAR2.
This is a scoped version of `avy-goto-char-2', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR1 CHAR2 &optional ARG)" t) (autoload 'avy-goto-char-2-below "avy" "Jump to the currently visible CHAR1 followed by CHAR2.
This is a scoped version of `avy-goto-char-2', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR1 CHAR2 &optional ARG)" t) (autoload 'avy-isearch "avy" "Jump to one of the current isearch candidates." t) (autoload 'avy-goto-word-0 "avy" "Jump to a word start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

(fn ARG &optional BEG END)" t) (autoload 'avy-goto-whitespace-end "avy" "Jump to the end of a whitespace sequence.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

(fn ARG &optional BEG END)" t) (autoload 'avy-goto-word-1 "avy" "Jump to the currently visible CHAR at a word start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.
When SYMBOL is non-nil, jump to symbol start instead of word start.

(fn CHAR &optional ARG BEG END SYMBOL)" t) (autoload 'avy-goto-word-1-above "avy" "Jump to the currently visible CHAR at a word start.
This is a scoped version of `avy-goto-word-1', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t) (autoload 'avy-goto-word-1-below "avy" "Jump to the currently visible CHAR at a word start.
This is a scoped version of `avy-goto-word-1', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t) (autoload 'avy-goto-symbol-1 "avy" "Jump to the currently visible CHAR at a symbol start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t) (autoload 'avy-goto-symbol-1-above "avy" "Jump to the currently visible CHAR at a symbol start.
This is a scoped version of `avy-goto-symbol-1', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t) (autoload 'avy-goto-symbol-1-below "avy" "Jump to the currently visible CHAR at a symbol start.
This is a scoped version of `avy-goto-symbol-1', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn CHAR &optional ARG)" t) (autoload 'avy-goto-subword-0 "avy" "Jump to a word or subword start.
The window scope is determined by `avy-all-windows' (ARG negates it).

When PREDICATE is non-nil it's a function of zero parameters that
should return true.

BEG and END narrow the scope where candidates are searched.

(fn &optional ARG PREDICATE BEG END)" t) (autoload 'avy-goto-subword-1 "avy" "Jump to the currently visible CHAR at a subword start.
The window scope is determined by `avy-all-windows' (ARG negates it).
The case of CHAR is ignored.

(fn CHAR &optional ARG)" t) (autoload 'avy-goto-word-or-subword-1 "avy" "Forward to `avy-goto-subword-1' or `avy-goto-word-1'.
Which one depends on variable `subword-mode'." t) (autoload 'avy-goto-line "avy" "Jump to a line start in current buffer.

When ARG is 1, jump to lines currently visible, with the option
to cancel to `goto-line' by entering a number.

When ARG is 4, negate the window scope determined by
`avy-all-windows'.

Otherwise, forward to `goto-line' with ARG.

(fn &optional ARG)" t) (autoload 'avy-goto-line-above "avy" "Goto visible line above the cursor.
OFFSET changes the distance between the closest key to the cursor and
the cursor
When BOTTOM-UP is non-nil, display avy candidates from top to bottom

(fn &optional OFFSET BOTTOM-UP)" t) (autoload 'avy-goto-line-below "avy" "Goto visible line below the cursor.
OFFSET changes the distance between the closest key to the cursor and
the cursor
When BOTTOM-UP is non-nil, display avy candidates from top to bottom

(fn &optional OFFSET BOTTOM-UP)" t) (autoload 'avy-goto-end-of-line "avy" "Call `avy-goto-line' and move to the end of the line.

(fn &optional ARG)" t) (autoload 'avy-copy-line "avy" "Copy a selected line above the current line.
ARG lines can be used.

(fn ARG)" t) (autoload 'avy-move-line "avy" "Move a selected line above the current line.
ARG lines can be used.

(fn ARG)" t) (autoload 'avy-copy-region "avy" "Select two lines and copy the text between them to point.

The window scope is determined by `avy-all-windows' or
`avy-all-windows-alt' when ARG is non-nil.

(fn ARG)" t) (autoload 'avy-move-region "avy" "Select two lines and move the text between them above the current line." t) (autoload 'avy-kill-region "avy" "Select two lines and kill the region between them.

The window scope is determined by `avy-all-windows' or
`avy-all-windows-alt' when ARG is non-nil.

(fn ARG)" t) (autoload 'avy-kill-ring-save-region "avy" "Select two lines and save the region between them to the kill ring.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

(fn ARG)" t) (autoload 'avy-kill-whole-line "avy" "Select line and kill the whole selected line.

With a numerical prefix ARG, kill ARG line(s) starting from the
selected line.  If ARG is negative, kill backward.

If ARG is zero, kill the selected line but exclude the trailing
newline.

\\[universal-argument] 3 \\[avy-kil-whole-line] kill three lines
starting from the selected line.  \\[universal-argument] -3

\\[avy-kill-whole-line] kill three lines backward including the
selected line.

(fn ARG)" t) (autoload 'avy-kill-ring-save-whole-line "avy" "Select line and save the whole selected line as if killed, but don’t kill it.

This command is similar to `avy-kill-whole-line', except that it
saves the line(s) as if killed, but does not kill it(them).

With a numerical prefix ARG, kill ARG line(s) starting from the
selected line.  If ARG is negative, kill backward.

If ARG is zero, kill the selected line but exclude the trailing
newline.

(fn ARG)" t) (autoload 'avy-setup-default "avy" "Setup the default shortcuts.") (autoload 'avy-goto-char-timer "avy" "Read one or many consecutive chars and jump to the first one.
The window scope is determined by `avy-all-windows' (ARG negates it).

(fn &optional ARG)" t) (autoload 'avy-transpose-lines-in-region "avy" "Transpose lines in the active region." t) (register-definition-prefixes "avy" '("avy-")) (provide 'avy-autoloads)) "string-inflection" ((string-inflection-autoloads string-inflection) (autoload 'string-inflection-ruby-style-cycle "string-inflection" "foo_bar => FOO_BAR => FooBar => foo_bar" t) (autoload 'string-inflection-elixir-style-cycle "string-inflection" "foo_bar => FooBar => foo_bar" t) (autoload 'string-inflection-python-style-cycle "string-inflection" "foo_bar => FOO_BAR => FooBar => foo_bar" t) (autoload 'string-inflection-java-style-cycle "string-inflection" "fooBar => FOO_BAR => FooBar => fooBar" t) (autoload 'string-inflection-all-cycle "string-inflection" "foo_bar => FOO_BAR => FooBar => fooBar => foo-bar => Foo_Bar => foo_bar" t) (autoload 'string-inflection-toggle "string-inflection" "toggle foo_bar <=> FooBar" t) (autoload 'string-inflection-camelcase "string-inflection" "FooBar format" t) (autoload 'string-inflection-lower-camelcase "string-inflection" "fooBar format" t) (autoload 'string-inflection-underscore "string-inflection" "foo_bar format" t) (autoload 'string-inflection-capital-underscore "string-inflection" "Foo_Bar format" t) (autoload 'string-inflection-upcase "string-inflection" "FOO_BAR format" t) (autoload 'string-inflection-kebab-case "string-inflection" "foo-bar format" t) (register-definition-prefixes "string-inflection" '("string-inflection-")) (provide 'string-inflection-autoloads)) "citeproc" ((citeproc-style citeproc-rt citeproc-prange citeproc-bibtex citeproc-biblatex citeproc-date citeproc-disamb citeproc-itemdata citeproc-sort citeproc-subbibs citeproc-name citeproc-s citeproc-formatters citeproc-test-human citeproc-locale citeproc citeproc-autoloads citeproc-itemgetters citeproc-context citeproc-number citeproc-generic-elements citeproc-cite citeproc-lib citeproc-proc citeproc-choose citeproc-term citeproc-macro) (register-definition-prefixes "citeproc" '("citeproc-")) (register-definition-prefixes "citeproc-biblatex" '("citeproc-blt-")) (register-definition-prefixes "citeproc-bibtex" '("citeproc-bt-")) (register-definition-prefixes "citeproc-choose" '("citeproc-")) (register-definition-prefixes "citeproc-cite" '("citeproc-")) (register-definition-prefixes "citeproc-context" '("citeproc-")) (register-definition-prefixes "citeproc-date" '("citeproc-")) (register-definition-prefixes "citeproc-disamb" '("citeproc-")) (register-definition-prefixes "citeproc-formatters" '("citeproc-f")) (register-definition-prefixes "citeproc-generic-elements" '("citeproc-")) (register-definition-prefixes "citeproc-itemdata" '("citeproc-itd-")) (register-definition-prefixes "citeproc-itemgetters" '("citeproc-")) (register-definition-prefixes "citeproc-lib" '("citeproc-")) (register-definition-prefixes "citeproc-locale" '("citeproc-locale-")) (register-definition-prefixes "citeproc-macro" '("citeproc-")) (register-definition-prefixes "citeproc-name" '("citeproc-")) (register-definition-prefixes "citeproc-number" '("citeproc-")) (register-definition-prefixes "citeproc-prange" '("citeproc-prange-")) (register-definition-prefixes "citeproc-proc" '("citeproc-proc-")) (register-definition-prefixes "citeproc-rt" '("citeproc-rt-")) (register-definition-prefixes "citeproc-s" '("citeproc-s-")) (register-definition-prefixes "citeproc-sort" '("citeproc-")) (register-definition-prefixes "citeproc-style" '("citeproc-")) (register-definition-prefixes "citeproc-subbibs" '("citeproc-sb-")) (register-definition-prefixes "citeproc-term" '("citeproc-term-")) (register-definition-prefixes "citeproc-test-human" '("citeproc-test-human-")) (provide 'citeproc-autoloads)) "ht" ((ht ht-autoloads) (register-definition-prefixes "ht" 'nil) (provide 'ht-autoloads)) "ox-pandoc" ((ox-pandoc ox-pandoc-autoloads) (autoload 'org-pandoc-export-to-asciidoc "ox-pandoc" "Export to asciidoc.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-asciidoc-and-open "ox-pandoc" "Export to asciidoc and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-asciidoc "ox-pandoc" "Export as asciidoc.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-beamer "ox-pandoc" "Export to beamer.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-beamer-and-open "ox-pandoc" "Export to beamer and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-beamer "ox-pandoc" "Export as beamer.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-beamer-pdf "ox-pandoc" "Export to beamer-pdf.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-beamer-pdf-and-open "ox-pandoc" "Export to beamer-pdf and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-commonmark "ox-pandoc" "Export to commonmark.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-commonmark-and-open "ox-pandoc" "Export to commonmark and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-commonmark "ox-pandoc" "Export as commonmark.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-context "ox-pandoc" "Export to context.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-context-and-open "ox-pandoc" "Export to context and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-context "ox-pandoc" "Export as context.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-context-pdf "ox-pandoc" "Export to context-pdf.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-context-pdf-and-open "ox-pandoc" "Export to context-pdf and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-docbook4 "ox-pandoc" "Export to docbook4.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-docbook4-and-open "ox-pandoc" "Export to docbook4 and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-docbook4 "ox-pandoc" "Export as docbook4.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-docbook5 "ox-pandoc" "Export to docbook5.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-docbook5-and-open "ox-pandoc" "Export to docbook5 and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-docbook5 "ox-pandoc" "Export as docbook5.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-docx "ox-pandoc" "Export to docx.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-docx-and-open "ox-pandoc" "Export to docx and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-dokuwiki "ox-pandoc" "Export to dokuwiki.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-dokuwiki-and-open "ox-pandoc" "Export to dokuwiki and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-dokuwiki "ox-pandoc" "Export as dokuwiki.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-dzslides "ox-pandoc" "Export to dzslides.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-dzslides-and-open "ox-pandoc" "Export to dzslides and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-dzslides "ox-pandoc" "Export as dzslides.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-epub2 "ox-pandoc" "Export to epub2.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-epub2-and-open "ox-pandoc" "Export to epub2 and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-epub3 "ox-pandoc" "Export to epub3.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-epub3-and-open "ox-pandoc" "Export to epub3 and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-fb2 "ox-pandoc" "Export to fb2.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-fb2-and-open "ox-pandoc" "Export to fb2 and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-fb2 "ox-pandoc" "Export as fb2.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-gfm "ox-pandoc" "Export to gfm.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-gfm-and-open "ox-pandoc" "Export to gfm and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-gfm "ox-pandoc" "Export as gfm.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-haddock "ox-pandoc" "Export to haddock.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-haddock-and-open "ox-pandoc" "Export to haddock and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-haddock "ox-pandoc" "Export as haddock.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-html4 "ox-pandoc" "Export to html4.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-html4-and-open "ox-pandoc" "Export to html4 and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-html4 "ox-pandoc" "Export as html4.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-html5 "ox-pandoc" "Export to html5.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-html5-and-open "ox-pandoc" "Export to html5 and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-html5 "ox-pandoc" "Export as html5.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-html5-pdf "ox-pandoc" "Export to html5-pdf.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-html5-pdf-and-open "ox-pandoc" "Export to html5-pdf and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-icml "ox-pandoc" "Export to icml.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-icml-and-open "ox-pandoc" "Export to icml and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-icml "ox-pandoc" "Export as icml.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-jats "ox-pandoc" "Export to jats.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-jats-and-open "ox-pandoc" "Export to jats and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-jats "ox-pandoc" "Export as jats.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-jira "ox-pandoc" "Export to jira.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-jira "ox-pandoc" "Export as jira.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-json "ox-pandoc" "Export to json.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-json-and-open "ox-pandoc" "Export to json and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-json "ox-pandoc" "Export as json.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-latex "ox-pandoc" "Export to latex.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-latex-and-open "ox-pandoc" "Export to latex and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-latex "ox-pandoc" "Export as latex.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-latex-pdf "ox-pandoc" "Export to latex-pdf.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-latex-pdf-and-open "ox-pandoc" "Export to latex-pdf and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-man "ox-pandoc" "Export to man.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-man-and-open "ox-pandoc" "Export to man and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-man "ox-pandoc" "Export as man.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-markdown "ox-pandoc" "Export to markdown.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-markdown-and-open "ox-pandoc" "Export to markdown and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-markdown "ox-pandoc" "Export as markdown.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-markdown_mmd "ox-pandoc" "Export to markdown_mmd.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-markdown_mmd-and-open "ox-pandoc" "Export to markdown_mmd and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-markdown_mmd "ox-pandoc" "Export as markdown_mmd.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-markdown_phpextra "ox-pandoc" "Export to markdown_phpextra.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-markdown_phpextra-and-open "ox-pandoc" "Export to markdown_phpextra and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-markdown_phpextra "ox-pandoc" "Export as markdown_phpextra.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-markdown_strict "ox-pandoc" "Export to markdown_strict.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-markdown_strict-and-open "ox-pandoc" "Export to markdown_strict and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-markdown_strict "ox-pandoc" "Export as markdown_strict.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-mediawiki "ox-pandoc" "Export to mediawiki.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-mediawiki-and-open "ox-pandoc" "Export to mediawiki and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-mediawiki "ox-pandoc" "Export as mediawiki.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-ms "ox-pandoc" "Export to ms.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-ms-and-open "ox-pandoc" "Export to ms and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-ms "ox-pandoc" "Export as ms.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-ms-pdf "ox-pandoc" "Export to ms-pdf.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-ms-pdf-and-open "ox-pandoc" "Export to ms-pdf and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-muse "ox-pandoc" "Export to muse.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-muse-and-open "ox-pandoc" "Export to muse and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-muse "ox-pandoc" "Export as muse.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-native "ox-pandoc" "Export to native.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-native-and-open "ox-pandoc" "Export to native and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-native "ox-pandoc" "Export as native.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-odt "ox-pandoc" "Export to odt.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-odt-and-open "ox-pandoc" "Export to odt and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-opendocument "ox-pandoc" "Export to opendocument.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-opendocument-and-open "ox-pandoc" "Export to opendocument and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-opendocument "ox-pandoc" "Export as opendocument.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-opml "ox-pandoc" "Export to opml.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-opml-and-open "ox-pandoc" "Export to opml and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-opml "ox-pandoc" "Export as opml.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-org "ox-pandoc" "Export to org.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-org-and-open "ox-pandoc" "Export to org and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-org "ox-pandoc" "Export as org.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-plain "ox-pandoc" "Export to plain.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-plain-and-open "ox-pandoc" "Export to plain and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-plain "ox-pandoc" "Export as plain.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-pptx "ox-pandoc" "Export to pptx.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-pptx-and-open "ox-pandoc" "Export to pptx and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-revealjs "ox-pandoc" "Export to revealjs.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-revealjs-and-open "ox-pandoc" "Export to revealjs and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-revealjs "ox-pandoc" "Export as revealjs.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-rst "ox-pandoc" "Export to rst.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-rst-and-open "ox-pandoc" "Export to rst and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-rst "ox-pandoc" "Export as rst.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-rtf "ox-pandoc" "Export to rtf.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-rtf-and-open "ox-pandoc" "Export to rtf and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-rtf "ox-pandoc" "Export as rtf.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-s5 "ox-pandoc" "Export to s5.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-s5-and-open "ox-pandoc" "Export to s5 and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-s5 "ox-pandoc" "Export as s5.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-slideous "ox-pandoc" "Export to slideous.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-slideous-and-open "ox-pandoc" "Export to slideous and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-slideous "ox-pandoc" "Export as slideous.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-slidy "ox-pandoc" "Export to slidy.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-slidy-and-open "ox-pandoc" "Export to slidy and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-slidy "ox-pandoc" "Export as slidy.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-tei "ox-pandoc" "Export to tei.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-tei-and-open "ox-pandoc" "Export to tei and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-tei "ox-pandoc" "Export as tei.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-texinfo "ox-pandoc" "Export to texinfo.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-texinfo-and-open "ox-pandoc" "Export to texinfo and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-texinfo "ox-pandoc" "Export as texinfo.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-textile "ox-pandoc" "Export to textile.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-textile-and-open "ox-pandoc" "Export to textile and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-textile "ox-pandoc" "Export as textile.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-zimwiki "ox-pandoc" "Export to zimwiki.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-to-zimwiki-and-open "ox-pandoc" "Export to zimwiki and open.

(fn &optional A S V B E)" t) (autoload 'org-pandoc-export-as-zimwiki "ox-pandoc" "Export as zimwiki.

(fn &optional A S V B E)" t) (register-definition-prefixes "ox-pandoc" '("org-pandoc-")) (provide 'ox-pandoc-autoloads)) "org-ref" ((org-ref-bibtex org-ref-export org-ref-label-link org-ref-pdf org-ref-core contrib org-ref-arxiv org-ref org-ref-latex org-ref-autoloads org-ref-helm org-ref-compat org-ref-utils nist-webbook openalex org-ref-sci-id org-ref-pgk doi-utils x2bib org-ref-wos org-ref-bibliography-links org-ref-refproc org-ref-ivy org-ref-pubmed org-ref-scopus org-ref-scifinder org-ref-ref-links org-ref-citation-links org-ref-isbn org-ref-url-utils org-ref-natbib-bbl-citeproc org-ref-glossary org-ref-worldcat org-ref-misc-links) (register-definition-prefixes "contrib" '("org-ref-")) (autoload 'doi-utils-async-download-pdf "doi-utils" "Download the PDF for bibtex entry at point asynchronously.
It is not fully async, only the download is. Fully async is
harder because you need to run `doi-utils-get-pdf-url' async
too. " t) (autoload 'doi-utils-get-bibtex-entry-pdf "doi-utils" "Download pdf for entry at point if the pdf does not already exist locally.
The entry must have a doi. The pdf will be saved, by the name
%s.pdf where %s is the bibtex label. Files will not be
overwritten. The pdf will be checked to make sure it is a pdf,
and not some html failure page. You must have permission to
access the pdf. We open the pdf at the end if
`doi-utils-open-pdf-after-download' is non-nil.

With one prefix ARG, directly get the pdf from a file (through
`read-file-name') instead of looking up a DOI. With a double
prefix ARG, directly get the pdf from an open buffer (through
`read-buffer-to-switch') instead. These two alternative methods
work even if the entry has no DOI, and the pdf file is not
checked.

(fn &optional ARG)" t) (autoload 'doi-utils-add-bibtex-entry-from-doi "doi-utils" "Add DOI entry to end of a file in the current directory.
Pick the file ending with .bib or in .  If you have an active region that
starts like a DOI, that will be the initial prompt.  If no region
is selected and the first entry of the ‘kill-ring’ starts like a
DOI, then that is the initial prompt.  Otherwise, you have to type
or paste in a DOI.
Argument BIBFILE the bibliography to use.

(fn DOI &optional BIBFILE)" t) (autoload 'doi-utils-doi-to-org-bibtex "doi-utils" "Convert a DOI to an ‘org-bibtex’ form and insert it at point.

(fn DOI)" t) (autoload 'bibtex-set-field "doi-utils" "Set FIELD to VALUE in bibtex file.  create field if it does not exist.
Optional argument NODELIM see `bibtex-make-field'.

(fn FIELD VALUE &optional NODELIM)" t) (autoload 'doi-utils-update-bibtex-entry-from-doi "doi-utils" "Update fields in a bibtex entry from the DOI.
Every field will be updated, so previous change will be lost.

(fn DOI)" t) (autoload 'doi-utils-update-field "doi-utils" "Update the field at point in the bibtex entry.
Data is retrieved from the doi in the entry." t) (autoload 'doi-utils-wos "doi-utils" "Open Web of Science entry for DOI.

(fn DOI)" t) (autoload 'doi-utils-wos-citing "doi-utils" "Open Web of Science citing articles entry for DOI.
May be empty if none are found.

(fn DOI)" t) (autoload 'doi-utils-wos-related "doi-utils" "Open Web of Science related articles page for DOI.

(fn DOI)" t) (autoload 'doi-utils-ads "doi-utils" "Open ADS entry for DOI

(fn DOI)" t) (autoload 'doi-utils-open "doi-utils" "Open DOI in browser.

(fn DOI)" t) (autoload 'doi-utils-open-bibtex "doi-utils" "Search through variable `bibtex-completion-bibliography' for DOI.

(fn DOI)" t) (autoload 'doi-utils-crossref "doi-utils" "Search DOI in CrossRef.

(fn DOI)" t) (autoload 'doi-utils-google-scholar "doi-utils" "Google scholar the DOI.

(fn DOI)" t) (autoload 'doi-utils-pubmed "doi-utils" "Search Pubmed for the DOI.

(fn DOI)" t) (autoload 'doi-utils-crossref-citation-query "doi-utils" "Query Crossref with the title of the bibtex entry at point.
Get a list of possible matches. Choose one with completion." t) (autoload 'doi-utils-debug "doi-utils" "Generate an org-buffer showing data about DOI.

(fn DOI)" t) (autoload 'doi-utils-add-entry-from-crossref-query "doi-utils" "Search Crossref with QUERY and use completion to select an entry to add to BIBTEX-FILE.

(fn QUERY BIBTEX-FILE)" t) (register-definition-prefixes "doi-utils" '("*doi-utils-" "agu-pdf-url" "aip-pdf-url" "aps-pdf-url" "arxiv-pdf-url" "asme-biomechanical-pdf-url" "chemistry-europe-pdf-url" "copernicus-" "crossref-add-bibtex-entry" "doi-" "ecs" "frontiers-pdf-url" "generic-full-pdf-url" "ieee" "iop-pdf-url" "jneurosci-pdf-url" "jstor-pdf-url" "linkinghub-elsevier-pdf-url" "nature-pdf-url" "osa-pdf-url" "pnas-pdf-url" "rsc-pdf-url" "rss-pdf-url" "sage-pdf-url" "science-" "siam-pdf-url" "springer-" "tandfonline-pdf-url" "wiley-pdf-url-2")) (autoload 'nist-webbook-formula "nist-webbook" "Search NIST webbook for FORMULA.

(fn FORMULA)" t) (autoload 'nist-webbook-name "nist-webbook" "Search NIST webbook for NAME.

(fn NAME)" t) (register-definition-prefixes "openalex" '("oa-" "org-ref-citation-hydra")) (autoload 'arxiv-add-bibtex-entry "org-ref-arxiv" "Add bibtex entry for ARXIV-NUMBER to BIBFILE.

(fn ARXIV-NUMBER BIBFILE)" t) (autoload 'arxiv-get-pdf "org-ref-arxiv" "Retrieve a pdf for ARXIV-NUMBER and save it to PDF.

(fn ARXIV-NUMBER PDF)" t) (autoload 'arxiv-get-pdf-add-bibtex-entry "org-ref-arxiv" "Add bibtex entry for ARXIV-NUMBER to BIBFILE.
Remove troublesome chars from the bibtex key, retrieve a pdf
for ARXIV-NUMBER and save it to PDFDIR with the same name of the
key.

(fn ARXIV-NUMBER BIBFILE PDFDIR)" t) (register-definition-prefixes "org-ref-arxiv" '("arxiv-")) (register-definition-prefixes "org-ref-bibliography-links" '("org-ref-")) (autoload 'org-ref-bibtex-generate-longtitles "org-ref-bibtex" "Generate longtitles.bib which are @string definitions.
The full journal names are in `org-ref-bibtex-journal-abbreviations'." t) (autoload 'org-ref-bibtex-generate-shorttitles "org-ref-bibtex" "Generate shorttitles.bib which are @string definitions.
The abbreviated journal names in `org-ref-bibtex-journal-abbreviations'." t) (autoload 'org-ref-stringify-journal-name "org-ref-bibtex" "Replace journal name in a bibtex entry with a string.
The strings are defined in
`org-ref-bibtex-journal-abbreviations'.  The optional arguments KEY,
START and END allow you to use this with `bibtex-map-entries'

(fn &optional KEY START END)" t) (autoload 'org-ref-set-journal-string "org-ref-bibtex" "Set a bibtex journal name to the string that represents FULL-JOURNAL-NAME.
This is defined in `org-ref-bibtex-journal-abbreviations'.

(fn FULL-JOURNAL-NAME)" t) (autoload 'org-ref-replace-nonascii "org-ref-bibtex" "Replace non-ascii characters with LaTeX representations in a
bibtex entry." t) (autoload 'org-ref-title-case "org-ref-bibtex" "Convert a bibtex entry title and booktitle to title-case.
Convert only if the entry type is a member of the list
`org-ref-title-case-types'. The arguments KEY, START and END are
optional, and are only there so you can use this function with
`bibtex-map-entries' to change all the title entries in articles and
books.

(fn &optional KEY START END)" t) (autoload 'org-ref-title-case-article "org-ref-bibtex" "Convert a bibtex entry article or book title to title-case.
The arguments KEY, START and END are optional, and are only there
so you can use this function with `bibtex-map-entries' to change
all the title entries in articles and books.

(fn &optional KEY START END)" t) (autoload 'org-ref-sentence-case-article "org-ref-bibtex" "Convert a bibtex entry article title to sentence-case.
The arguments KEY, START and END are optional, and are only there
so you can use this function with `bibtex-map-entries' to change
all the title entries in articles.

(fn &optional KEY START END)" t) (autoload 'org-ref-bibtex-next-entry "org-ref-bibtex" "Jump to the beginning of the next bibtex entry.
N is a prefix argument.  If it is numeric, jump that many entries
forward.  Negative numbers do nothing.

(fn &optional N)" t) (autoload 'org-ref-bibtex-previous-entry "org-ref-bibtex" "Jump to beginning of the previous bibtex entry.
N is a prefix argument.  If it is numeric, jump that many entries back.

(fn &optional N)" t) (autoload 'org-ref-bibtex-visible-entry "org-ref-bibtex" "Jump to visible entry." t) (autoload 'org-ref-bibtex-visible-field "org-ref-bibtex" "Jump to visible field." t) (autoload 'org-ref-bibtex-format-url-if-doi "org-ref-bibtex" "Hook function to format url to follow the current DOI conventions." t) (autoload 'org-ref-bibtex-wos "org-ref-bibtex" "Open bibtex entry in Web Of Science if there is a DOI." t) (autoload 'org-ref-bibtex-wos-citing "org-ref-bibtex" "Open citing articles for bibtex entry in Web Of Science if
there is a DOI." t) (autoload 'org-ref-bibtex-wos-related "org-ref-bibtex" "Open related articles for bibtex entry in Web Of Science if
there is a DOI." t) (autoload 'org-ref-bibtex-crossref "org-ref-bibtex" "Open the bibtex entry in Crossref by its doi." t) (autoload 'org-ref-bibtex-google-scholar "org-ref-bibtex" "Open the bibtex entry at point in google-scholar by its doi." t) (autoload 'org-ref-bibtex-pubmed "org-ref-bibtex" "Open the bibtex entry at point in Pubmed by its doi." t) (autoload 'org-ref-bibtex-pdf "org-ref-bibtex" "Open the pdf for the bibtex entry at point.
Thin wrapper to get `org-ref-bibtex' to open pdf, because it
calls functions with a DOI argument.

(fn &optional _)" t) (autoload 'org-ref-bibtex-assoc-pdf-with-entry "org-ref-bibtex" "Prompt for pdf associated with entry at point and rename it.
Check whether a pdf already exists in `bibtex-completion-library' with the
name '[bibtexkey].pdf'. If the file does not exist, rename it to
'[bibtexkey].pdf' using
`org-ref-bibtex-assoc-pdf-with-entry-move-function' and place it in
a directory. Optional PREFIX argument toggles between
`rename-file' and `copy-file'.

(fn &optional PREFIX)" t) (autoload 'org-ref-email-bibtex-entry "org-ref-bibtex" "Email current bibtex entry at point and pdf if it exists." t) (autoload 'org-ref-set-bibtex-keywords "org-ref-bibtex" "Add KEYWORDS to a bibtex entry.
If KEYWORDS is a list, it is converted to a comma-separated
string.  The KEYWORDS are added to the beginning of the
field.  Otherwise KEYWORDS should be a string of comma-separate
keywords.  Optional argument ARG prefix arg to replace keywords.

(fn KEYWORDS &optional ARG)" t) (autoload 'org-ref-extract-bibtex-blocks "org-ref-bibtex" "Extract all bibtex blocks in buffer to BIBFILE.
If BIBFILE exists, append, unless you use a prefix arg (C-u), which
will clobber the file.

(fn BIBFILE)" t) (autoload 'org-ref-open-bibtex-pdf "org-ref-bibtex" "Open pdf for a bibtex entry, if it exists." t) (autoload 'org-ref-open-bibtex-notes "org-ref-bibtex" "From a bibtex entry, open the notes if they exist." t) (autoload 'org-ref-open-in-browser "org-ref-bibtex" "Open the bibtex entry at point in a browser using the url field or doi field." t) (autoload 'org-ref-build-full-bibliography "org-ref-bibtex" "Build pdf of all bibtex entries, and open it." t) (autoload 'org-ref-sort-bibtex-entry "org-ref-bibtex" "Sort fields of entry in standard order." t) (autoload 'org-ref-downcase-bibtex-entry "org-ref-bibtex" "Downcase the entry type and fields." t) (autoload 'org-ref-clean-bibtex-entry "org-ref-bibtex" "Clean and replace the key in a bibtex entry.
See functions in `org-ref-clean-bibtex-entry-hook'." t) (register-definition-prefixes "org-ref-bibtex" '("orcb-" "org-ref-")) (autoload 'org-ref-delete-citation-at-point "org-ref-citation-links" "Delete the citation or reference at point." t) (autoload 'org-ref-replace-citation-at-point "org-ref-citation-links" "Replace the citation at point." t) (autoload 'org-ref-edit-pre-post-notes "org-ref-citation-links" "Edit the pre/post notes at point.

if you are not on a key, or with optional prefix
arg COMMON, edit the common prefixes instead.

(fn &optional COMMON)" t) (autoload 'org-ref-change-cite-type "org-ref-citation-links" "Change the cite type of citation link at point." t) (autoload 'org-ref-sort-citation-link "org-ref-citation-links" "Replace link at point with sorted link by year." t) (autoload 'org-ref-next-key "org-ref-citation-links" "Move cursor to the next cite key when on a cite link.
Otherwise run `right-word'. If the cursor moves off the link,
move to the beginning of the next cite link after this one." t) (autoload 'org-ref-previous-key "org-ref-citation-links" "Move cursor to the previous cite key when on a cite link.
Otherwise run `left-word'. If the cursor moves off the link,
move to the beginning of the previous cite link after this one." t) (autoload 'org-ref-jump-to-visible-key "org-ref-citation-links" "Jump to a visible key with avy." t) (autoload 'org-ref-insert-cite-link "org-ref-citation-links" "Insert a cite link with completion.
Optional prefix arg SET-TYPE to choose the cite type.

(fn &optional SET-TYPE)" t) (register-definition-prefixes "org-ref-citation-links" '("org-ref-")) (register-definition-prefixes "org-ref-compat" '("org-ref-to-org-cite")) (autoload 'org-ref-insert-link "org-ref-core" "Insert an org-ref link.
If no prefix ARG insert a cite.
If one prefix ARG insert a ref.
If two prefix ARGs insert a label.

This is a generic function. Specific backends might
provide their own version.

(fn ARG)" t) (autoload 'org-ref-help "org-ref-core" "Open the `org-ref' manual." t) (register-definition-prefixes "org-ref-core" '("org-ref-")) (register-definition-prefixes "org-ref-export" '("org-ref")) (autoload 'org-ref-add-glossary-entry "org-ref-glossary" "Insert a new glossary entry.
LABEL is how you refer to it with links.
NAME is the name of the entry to be defined.
DESCRIPTION is the definition of the entry.
Entry gets added after the last #+latex_header line.

This is not a preferred way to add entries. It is preferred to
manually add them to the glossary table.

(fn LABEL NAME DESCRIPTION)" t) (autoload 'org-ref-add-acronym-entry "org-ref-glossary" "Add an acronym entry with LABEL.
  ABBRV is the abbreviated form.
  FULL is the expanded acronym.

This is not the preferred way to add acronyms, you should add
them manually to the acronyms table.

(fn LABEL ABBRV FULL)" t) (register-definition-prefixes "org-ref-glossary" '("or-" "org-ref-")) (autoload 'org-ref-cite-insert-helm "org-ref-helm" "Search BibTeX entries.

With a prefix ARG, the cache is invalidated and the bibliography
reread.

If LOCAL-BIB is non-nil, display that the BibTeX entries are read
from the local bibliography.  This is set internally by
`helm-bibtex-with-local-bibliography'.

If INPUT is non-nil and a string, that value is going to be used
as a predefined search term.  Can be used to define functions for
frequent searches (e.g. your own publications).

(fn &optional ARG LOCAL-BIB INPUT)" t) (register-definition-prefixes "org-ref-helm" '("org-ref-helm-source-")) (autoload 'org-ref-isbn-clean-bibtex-entry "org-ref-isbn" "Clean a bibtex entry inserted via `isbn-to-bibtex'.
See functions in `org-ref-isbn-clean-bibtex-entry-hook'." t) (autoload 'isbn-to-bibtex-lead "org-ref-isbn" "Search lead.to for ISBN bibtex entry.
You have to copy the entry if it is on the page to your bibtex
file.

(fn ISBN)" t) (autoload 'isbn-to-bibtex "org-ref-isbn" "Get bibtex entry for ISBN and insert it into BIBFILE.
Nothing happens if an entry with the generated key already exists
in the file. Data comes from www.ebook.de.

(fn ISBN BIBFILE)" t) (register-definition-prefixes "org-ref-isbn" '("isbn-to-bibtex-open-library" "org-ref-isbn-" "oricb-")) (register-definition-prefixes "org-ref-ivy" '("org-ref-")) (autoload 'org-ref-insert-label-link "org-ref-label-link" "Insert a new label with completion.
The completion helps ensure you use a unique label." t) (register-definition-prefixes "org-ref-latex" '("org-ref-")) (autoload 'org-ref-list-of-figures "org-ref-misc-links" "Generate buffer with list of figures in them.
ARG does nothing.
Ignore figures in COMMENTED sections.

(fn &optional ARG)" t) (autoload 'org-ref-list-of-tables "org-ref-misc-links" "Generate a buffer with a list of tables.
ARG does nothing.

(fn &optional ARG)" t) (autoload 'org-ref-index "org-ref-misc-links" "Open an *index* buffer with links to index entries.
PATH is required for the org-link, but it does nothing here.

(fn &optional PATH)" t) (register-definition-prefixes "org-ref-misc-links" '("org-ref-idxproc")) (register-definition-prefixes "org-ref-natbib-bbl-citeproc" '("org-")) (autoload 'org-ref-pdf-to-bibtex "org-ref-pdf" "Add pdf of current buffer to bib file and save pdf. The pdf
should be open in Emacs using the `pdf-tools' package." t) (autoload 'org-ref-pdf-debug-pdf "org-ref-pdf" "Try to debug getting a doi from a pdf.
Opens a buffer with the pdf converted to text, and `occur' on the
variable `org-ref-pdf-doi-regex'.

(fn PDF-FILE)" t) (autoload 'org-ref-pdf-crossref-lookup "org-ref-pdf" "Lookup highlighted text in PDFView in CrossRef." t) (register-definition-prefixes "org-ref-pdf" '("org-ref-" "pdftotext-executable")) (autoload 'pubmed-insert-bibtex-from-pmid "org-ref-pubmed" "Insert a bibtex entry at point derived from PMID.
You must clean the entry after insertion.

(fn PMID)" t) (autoload 'pubmed "org-ref-pubmed" "Open http://www.ncbi.nlm.nih.gov/pubmed in a browser." t) (autoload 'pubmed-advanced "org-ref-pubmed" "Open http://www.ncbi.nlm.nih.gov/pubmed/advanced in a browser." t) (autoload 'pubmed-simple-search "org-ref-pubmed" "Open QUERY in Pubmed in a browser.

(fn QUERY)" t) (autoload 'pubmed-clinical "org-ref-pubmed" "Open http://www.ncbi.nlm.nih.gov/pubmed/clinical in a browser." t) (autoload 'pubmed-clinical-search "org-ref-pubmed" "Open QUERY in pubmed-clinical.

(fn QUERY)" t) (register-definition-prefixes "org-ref-pubmed" '("pubmed-")) (register-definition-prefixes "org-ref-ref-links" '("org-ref-")) (register-definition-prefixes "org-ref-refproc" '("org-ref-")) (autoload 'scifinder "org-ref-scifinder" "Open https://scifinder.cas.org/scifinder/view/scifinder/scifinderExplore.jsf in a browser." t) (autoload 'scopus-related-by-keyword-url "org-ref-scopus" "Return a Scopus url to articles related by keyword for DOI.

(fn DOI)" t) (autoload 'scopus-related-by-author-url "org-ref-scopus" "Return a Scopus url to articles related by author for DOI.

(fn DOI)" t) (autoload 'scopus-related-by-references-url "org-ref-scopus" "Return a Scopus url to articles related by references for DOI.

(fn DOI)" t) (autoload 'scopus-open-eid "org-ref-scopus" "Open article with EID in browser.

(fn EID)" t) (autoload 'scopus-basic-search "org-ref-scopus" "Open QUERY as a basic title-abstract-keyword search at scopus.com.

(fn QUERY)" t) (autoload 'scopus-advanced-search "org-ref-scopus" "Open QUERY as an advanced search at scopus.com.

(fn QUERY)" t) (register-definition-prefixes "org-ref-scopus" '("*hydra-eid*" "*scopus-api-key*" "scopus")) (autoload 'org-ref-url-debug-url "org-ref-url-utils" "Open a buffer to URL with all doi patterns highlighted.

(fn URL)" t) (autoload 'org-ref-url-html-to-bibtex "org-ref-url-utils" "Convert URL to a bibtex or biblatex entry in BIBFILE.
If URL is the first in the kill ring, use it. Otherwise, prompt for
one in the minibuffer.

(fn BIBFILE &optional URL)" t) (register-definition-prefixes "org-ref-url-utils" '("org-ref-")) (autoload 'org-ref-version "org-ref-utils" "Provide a version string for org-ref.
Copies the string to the clipboard." t) (autoload 'org-ref-debug "org-ref-utils" "Print some debug information to a buffer." t) (autoload 'org-ref-open-pdf-at-point "org-ref-utils" "Open the pdf for bibtex key under point if it exists." t) (autoload 'org-ref-add-pdf-at-point "org-ref-utils" "Add the pdf for bibtex key under point if it exists.

Similar to org-ref-bibtex-assoc-pdf-with-entry prompt for pdf
associated with bibtex key at point and rename it.  Check whether a
pdf already exists in `bibtex-completion-library' with the name
'[bibtexkey].pdf'. If the file does not exist, rename it to
'[bibtexkey].pdf' using
`org-ref-bibtex-assoc-pdf-with-entry-move-function' and place it
in a directory. Optional PREFIX argument toggles between
`rename-file' and `copy-file'.

(fn &optional PREFIX)" t) (autoload 'org-ref-open-url-at-point "org-ref-utils" "Open the url for bibtex key under point." t) (autoload 'org-ref-open-notes-at-point "org-ref-utils" "Open the notes for bibtex key under point in a cite link in a buffer.
Can also be called with THEKEY in a program.

(fn &optional THEKEY)" t) (autoload 'org-ref-open-citation-at-point "org-ref-utils" "Open bibtex file to key at point." t) (autoload 'org-ref-copy-entry-as-summary "org-ref-utils" "Copy the bibtex entry for the citation at point as a summary." t) (autoload 'org-ref-ads-at-point "org-ref-utils" "Open the doi in ADS for bibtex key under point." t) (autoload 'org-ref-wos-at-point "org-ref-utils" "Open the doi in wos for bibtex key under point." t) (autoload 'org-ref-wos-citing-at-point "org-ref-utils" "Open the doi in wos citing articles for bibtex key under point." t) (autoload 'org-ref-wos-related-at-point "org-ref-utils" "Open the doi in wos related articles for bibtex key under point." t) (autoload 'org-ref-google-scholar-at-point "org-ref-utils" "Search google scholar for bibtex key under point using the title." t) (autoload 'org-ref-biblio-at-point "org-ref-utils" "Do a biblio search for bibtex key under point using the title." t) (autoload 'org-ref-pubmed-at-point "org-ref-utils" "Open the doi in pubmed for bibtex key under point." t) (autoload 'org-ref-crossref-at-point "org-ref-utils" "Open the doi in crossref for bibtex key under point." t) (autoload 'org-ref-email-at-point "org-ref-utils" "Email the citation(s) at point." t) (autoload 'org-ref-find-non-ascii-characters "org-ref-utils" "Find non-ascii characters in the buffer.  Useful for cleaning up bibtex files." t) (autoload 'org-ref-extract-bibtex-to-file "org-ref-utils" "Extract all bibtex entries for citations buffer to BIBFILE.
If BIBFILE exists, append, unless you use a prefix arg (C-u),
which will CLOBBER the file.

(fn BIBFILE &optional CLOBBER)" t) (autoload 'org-ref-extract-bibtex-entries "org-ref-utils" "Extract the bibtex entries in the current buffer into a bibtex src block." t) (autoload 'org-ref-extract-cited-pdfs "org-ref-utils" "Copy PDFs in citations in current buffer to NEWDIR.

(fn NEWDIR)" t) (register-definition-prefixes "org-ref-utils" '("ords" "org-ref")) (register-definition-prefixes "org-ref-worldcat" '("worldcat-query-all")) (autoload 'wos-search "org-ref-wos" "Open the word at point or selection in Web of Science as a topic query." t) (autoload 'wos "org-ref-wos" "Open Web of Science search page in a browser." t) (register-definition-prefixes "org-ref-wos" '("*wos-" "wos-")) (autoload 'ris2bib "x2bib" "Convert RISFILE to bibtex and insert at point.
Without a prefix arg, stderr is diverted.
If VERBOSE is non-nil show command output.
If the region is active, assume it is a ris entry
and convert it to bib format in place.

(fn RISFILE &optional VERBOSE)" t) (autoload 'medxml2bib "x2bib" "Convert MEDFILE (in Pubmed xml) to bibtex and insert at point.
Without a prefix arg, stderr is diverted.
Display output if VERBOSE is non-nil.

(fn MEDFILE &optional VERBOSE)" t) (autoload 'clean-entries "x2bib" "Map over bibtex entries and clean them." t) (provide 'org-ref-autoloads)) "emacsql" ((emacsql-mysql emacsql-sqlite emacsql-sqlite-builtin emacsql-autoloads emacsql-sqlite-common emacsql-sqlite-module emacsql emacsql-pg emacsql-psql emacsql-compiler) (autoload 'emacsql-show-last-sql "emacsql" "Display the compiled SQL of the s-expression SQL expression before point.
A prefix argument causes the SQL to be printed into the current buffer.

(fn &optional PREFIX)" t) (register-definition-prefixes "emacsql" '("emacsql-")) (register-definition-prefixes "emacsql-compiler" '("emacsql-")) (register-definition-prefixes "emacsql-mysql" '("emacsql-mysql-")) (register-definition-prefixes "emacsql-pg" '("emacsql-pg-connection")) (register-definition-prefixes "emacsql-psql" '("emacsql-psql-")) (register-definition-prefixes "emacsql-sqlite" '("emacsql-sqlite-")) (register-definition-prefixes "emacsql-sqlite-builtin" '("emacsql-sqlite-builtin-connection")) (register-definition-prefixes "emacsql-sqlite-common" '("emacsql-")) (register-definition-prefixes "emacsql-sqlite-module" '("emacsql-sqlite-module-connection")) (provide 'emacsql-autoloads)) "magit-section" ((magit-section-pkg magit-section magit-section-autoloads) (register-definition-prefixes "magit-section" '("isearch-clean-overlays@magit-mode" "magit-")) (provide 'magit-section-autoloads)) "org-roam" ((org-roam-node org-roam-id org-roam-overlay org-roam-export org-roam-db org-roam org-roam-migrate org-roam-protocol org-roam-graph org-roam-log org-roam-capture org-roam-compat org-roam-autoloads org-roam-mode org-roam-dailies org-roam-utils) (autoload 'org-roam-list-files "org-roam" "Return a list of all Org-roam files under `org-roam-directory'.
See `org-roam-file-p' for how each file is determined to be as
part of Org-Roam.") (register-definition-prefixes "org-roam" '("org-roam-")) (autoload 'org-roam-capture- "org-roam-capture" "Main entry point of `org-roam-capture' module.
GOTO and KEYS correspond to `org-capture' arguments.
INFO is a plist for filling up Org-roam's capture templates.
NODE is an `org-roam-node' construct containing information about the node.
PROPS is a plist containing additional Org-roam properties for each template.
TEMPLATES is a list of org-roam templates.

(fn &key GOTO KEYS NODE INFO PROPS TEMPLATES)") (autoload 'org-roam-capture "org-roam-capture" "Launches an `org-capture' process for a new or existing node.
This uses the templates defined at `org-roam-capture-templates'.
Arguments GOTO and KEYS see `org-capture'.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.
The TEMPLATES, if provided, override the list of capture templates (see
`org-roam-capture-'.)
The INFO, if provided, is passed along to the underlying `org-roam-capture-'.

(fn &optional GOTO KEYS &key FILTER-FN TEMPLATES INFO)" t) (register-definition-prefixes "org-roam-capture" '("org-roam-capture-")) (register-definition-prefixes "org-roam-compat" '("org-roam--")) (autoload 'org-roam-dailies-capture-today "org-roam-dailies" "Create an entry in the daily-note for today.
When GOTO is non-nil, go the note without creating an entry.

ELisp programs can set KEYS to a string associated with a template.
In this case, interactive selection will be bypassed.

(fn &optional GOTO KEYS)" t) (autoload 'org-roam-dailies-goto-today "org-roam-dailies" "Find the daily-note for today, creating it if necessary.

ELisp programs can set KEYS to a string associated with a template.
In this case, interactive selection will be bypassed.

(fn &optional KEYS)" t) (autoload 'org-roam-dailies-capture-tomorrow "org-roam-dailies" "Create an entry in the daily-note for tomorrow.

With numeric argument N, use the daily-note N days in the future.

With a `C-u' prefix or when GOTO is non-nil, go the note without
creating an entry.

ELisp programs can set KEYS to a string associated with a template.
In this case, interactive selection will be bypassed.

(fn N &optional GOTO KEYS)" t) (autoload 'org-roam-dailies-goto-tomorrow "org-roam-dailies" "Find the daily-note for tomorrow, creating it if necessary.

With numeric argument N, use the daily-note N days in the
future.

ELisp programs can set KEYS to a string associated with a template.
In this case, interactive selection will be bypassed.

(fn N &optional KEYS)" t) (autoload 'org-roam-dailies-capture-yesterday "org-roam-dailies" "Create an entry in the daily-note for yesteday.

With numeric argument N, use the daily-note N days in the past.

When GOTO is non-nil, go the note without creating an entry.

ELisp programs can set KEYS to a string associated with a template.
In this case, interactive selection will be bypassed.

(fn N &optional GOTO KEYS)" t) (autoload 'org-roam-dailies-goto-yesterday "org-roam-dailies" "Find the daily-note for yesterday, creating it if necessary.

With numeric argument N, use the daily-note N days in the
future.

ELisp programs can set KEYS to a string associated with a template.
In this case, interactive selection will be bypassed.

(fn N &optional KEYS)" t) (autoload 'org-roam-dailies-capture-date "org-roam-dailies" "Create an entry in the daily-note for a date using the calendar.
Prefer past dates, unless PREFER-FUTURE is non-nil.
With a `C-u' prefix or when GOTO is non-nil, go the note without
creating an entry.

ELisp programs can set KEYS to a string associated with a template.
In this case, interactive selection will be bypassed.

(fn &optional GOTO PREFER-FUTURE KEYS)" t) (autoload 'org-roam-dailies-goto-date "org-roam-dailies" "Find the daily-note for a date using the calendar, creating it if necessary.
Prefer past dates, unless PREFER-FUTURE is non-nil.

ELisp programs can set KEYS to a string associated with a template.
In this case, interactive selection will be bypassed.

(fn &optional PREFER-FUTURE KEYS)" t) (autoload 'org-roam-dailies-find-directory "org-roam-dailies" "Find and open `org-roam-dailies-directory'." t) (register-definition-prefixes "org-roam-dailies" '("org-roam-dailies-")) (autoload 'org-roam-db-sync "org-roam-db" "Synchronize the cache state with the current Org files on-disk.
If FORCE, force a rebuild of the cache from scratch.

(fn &optional FORCE)" t) (defvar org-roam-db-autosync-mode nil "Non-nil if Org-Roam-Db-Autosync mode is enabled.
See the `org-roam-db-autosync-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `org-roam-db-autosync-mode'.") (custom-autoload 'org-roam-db-autosync-mode "org-roam-db" nil) (autoload 'org-roam-db-autosync-mode "org-roam-db" "Global minor mode to keep your Org-roam session automatically synchronized.

Through the session this will continue to setup your
buffers (that are Org-roam file visiting), keep track of the
related changes, maintain cache consistency and incrementally
update the currently active database.

If you need to manually trigger resync of the currently active
database, see `org-roam-db-sync' command.

This is a global minor mode.  If called interactively, toggle the
`Org-Roam-Db-Autosync mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='org-roam-db-autosync-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'org-roam-db-autosync-enable "org-roam-db" "Activate `org-roam-db-autosync-mode'.") (register-definition-prefixes "org-roam-db" '("emacsql-constraint" "org-roam-d")) (register-definition-prefixes "org-roam-export" '("org-roam-export--org-html--reference")) (autoload 'org-roam-graph "org-roam-graph" "Build and possibly display a graph for NODE.
ARG may be any of the following values:
  - nil       show the graph.
  - `\\[universal-argument]'     show the graph for NODE.
  - `\\[universal-argument]' N   show the graph for NODE limiting nodes to N steps.

(fn &optional ARG NODE)" t) (register-definition-prefixes "org-roam-graph" '("org-roam-")) (autoload 'org-roam-update-org-id-locations "org-roam-id" "Scan Org-roam files to update `org-id' related state.
This is like `org-id-update-id-locations', but will automatically
use the currently bound `org-directory' and `org-roam-directory'
along with DIRECTORIES (if any), where the lookup for files in
these directories will be always recursive.

Note: Org-roam doesn't have hard dependency on
`org-id-locations-file' to lookup IDs for nodes that are stored
in the database, but it still tries to properly integrates with
`org-id'. This allows the user to cross-reference IDs outside of
the current `org-roam-directory', and also link with \"id:\"
links to headings/files within the current `org-roam-directory'
that are excluded from identification in Org-roam as
`org-roam-node's, e.g. with \"ROAM_EXCLUDE\" property.

(fn &rest DIRECTORIES)" t) (register-definition-prefixes "org-roam-id" '("org-roam-id-")) (register-definition-prefixes "org-roam-log" '("org-roam-log-")) (autoload 'org-roam-migrate-wizard "org-roam-migrate" "Migrate all notes from to be compatible with Org-roam v2.
1. Convert all notes from v1 format to v2.
2. Rebuild the cache.
3. Replace all file links with ID links." t) (register-definition-prefixes "org-roam-migrate" '("org-roam-migrate-")) (autoload 'org-roam-buffer-display-dedicated "org-roam-mode" "Launch NODE dedicated Org-roam buffer.
Unlike the persistent `org-roam-buffer', the contents of this
buffer won't be automatically changed and will be held in place.

In interactive calls prompt to select NODE, unless called with
`universal-argument', in which case NODE will be set to
`org-roam-node-at-point'.

(fn NODE)" t) (register-definition-prefixes "org-roam-mode" '("org-roam-")) (autoload 'org-roam-node-find "org-roam-node" "Find and open an Org-roam node by its title or alias.
INITIAL-INPUT is the initial input for the prompt.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.
If OTHER-WINDOW, visit the NODE in another window.
The TEMPLATES, if provided, override the list of capture templates (see
`org-roam-capture-'.)

(fn &optional OTHER-WINDOW INITIAL-INPUT FILTER-FN PRED &key TEMPLATES)" t) (autoload 'org-roam-node-random "org-roam-node" "Find and open a random Org-roam node.
With prefix argument OTHER-WINDOW, visit the node in another
window instead.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.

(fn &optional OTHER-WINDOW FILTER-FN)" t) (autoload 'org-roam-node-insert "org-roam-node" "Find an Org-roam node and insert (where the point is) an \"id:\" link to it.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.
The TEMPLATES, if provided, override the list of capture templates (see
`org-roam-capture-'.)
The INFO, if provided, is passed to the underlying `org-roam-capture-'.

(fn &optional FILTER-FN &key TEMPLATES INFO)" t) (autoload 'org-roam-refile "org-roam-node" "Refile node at point to an Org-roam node.
If region is active, then use it instead of the node at point." t) (autoload 'org-roam-extract-subtree "org-roam-node" "Convert current subtree at point to a node, and extract it into a new file." t) (autoload 'org-roam-ref-find "org-roam-node" "Find and open an Org-roam node that's dedicated to a specific ref.
INITIAL-INPUT is the initial input to the prompt.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.

(fn &optional INITIAL-INPUT FILTER-FN)" t) (register-definition-prefixes "org-roam-node" '("org-roam-")) (register-definition-prefixes "org-roam-overlay" '("org-roam-overlay-")) (register-definition-prefixes "org-roam-protocol" '("org-roam-")) (autoload 'org-roam-version "org-roam-utils" "Return `org-roam' version.
Interactively, or when MESSAGE is non-nil, show in the echo area.

(fn &optional MESSAGE)" t) (autoload 'org-roam-diagnostics "org-roam-utils" "Collect and print info for `org-roam' issues." t) (register-definition-prefixes "org-roam-utils" '("org-roam-")) (provide 'org-roam-autoloads)) "org-roam-bibtex" ((orb-pkg orb-core org-roam-bibtex-autoloads orb-anystyle orb-pdf-scrapper orb-helm orb-compat org-roam-bibtex orb-ivy orb-utils orb-section) (autoload 'orb-anystyle "orb-anystyle" "Run anystyle COMMAND with `shell-command'.
ARGS is a plist with the following recognized keys:

Anystyle CLI options
==========
1) EXEC :exec      => string (valid executable)
- default value can be set through `orb-anystyle-executable'

2) COMMAND :command   => symbol or string
- valid values: find parse help check license train

3) Global options can be passed with the following keys.

FMODEL    :finder-model => string (valid file path)
PMODEL    :parser-model => string (valid file path)
PDFINFO   :pdfinfo      => string (valid executable)
PDFTOTEXT :pdftotext    => string (valid executable)
ADAPTER   :adapter      => anything
STDOUT    :stdout       => boolean
HELP      :help         => boolean
VERBOSE   :verbose      => boolean
VERSION   :version      => boolean
OVERWRITE :overwrite    => boolean
FORMAT    :format       => string, symbol or list of unquoted symbols

- FORMAT must be one or more output formats accepted by anystyle commands:
  parse => bib csl json ref txt xml
  find  => bib csl json ref txt ttx xml
- string must be space- or comma-separated, additional spaces are
  ignored

Default values for some of these options can be set globally via
the following variables: `orb-anystyle-finder-model',
`orb-anystyle-parser-model', `orb-anystyle-pdfinfo-executable',
`orb-anystyle-pdftotext-executable'.

4) Command options can be passed with the following keys:

CROP   :crop         => integer or cons cell of integers
LAYOUT :layout       => boolean
SOLO   :solo         => boolean

- Command options are ignored for commands other than find
- anystyle help -c flag is not supported

Default values for these options can be set globally via the
following variables: `orb-anystyle-find-crop',
`orb-anystyle-find-layout', `orb-anystyle-find-solo'.

5) INPUT  :input   => string (file path)

6) OUTPUT :output  => string (file path)

`shell-command'-related options
==========

7) BUFFER :buffer  => buffer-or-name

- `shell-command''s OUTPUT-BUFFER
- can be a cons cell (OUTPUT-BUFFER . ERROR-BUFFER)
- when nil, defaults to `orb-anystyle-default-buffer'

anystyle CLI command synopsis:
anystyle [global options] command [command options] [arguments...].

Homepage: https://anystyle.io
Github: https://github.com/inukshuk/anystyle-cli
Courtesy of its authors.

(fn COMMAND &key (EXEC orb-anystyle-executable) VERBOSE HELP VERSION ADAPTER ((:finder-model FMODEL) orb-anystyle-finder-model) ((:parser-model PMODEL) orb-anystyle-parser-model) (PDFINFO orb-anystyle-pdfinfo-executable) (PDFTOTEXT orb-anystyle-pdftotext-executable) FORMAT STDOUT OVERWRITE (CROP orb-anystyle-find-crop) (SOLO orb-anystyle-find-solo) (LAYOUT orb-anystyle-find-layout) INPUT OUTPUT (BUFFER orb-anystyle-default-buffer))") (function-put 'orb-anystyle 'lisp-indent-function 1) (register-definition-prefixes "orb-anystyle" '("orb-anystyle-")) (autoload 'orb-get-attached-file "orb-core" "Look up files associated with a BibTeX entry identified by CITEKEY.
Files are searched for using `bibtex-completion-find-pdf',
meaning that Mendeley, Zotero and plain file paths are all
supported, and variables `bibtex-completion-pdf-field' and
`bibtex-completion-library-path' are respected.  Additionally,
the BibTeX entry is searched for BibDesk-specific file fields
`Bdsk-File-N'.

If `orb-attached-file-extensions' is non-nil, return only file paths
matching the respective extensions.

If `orb-abbreviate-file-name' is non-nil, force an abbreviated
file name.

Depending on the value of `orb-use-bibdesk-attachments', the
BibDesk-specific file fields `Bdsk-File-N' may or may not be used
for the lookup.

If multiple files have been found, the user will be prompted to
select one.

(fn CITEKEY)") (autoload 'orb-open-attached-file "orb-core" "Open a file associated with CITEKEY.
CITEKEY must be a list for compatibility with `bibtex-completion'
functions, which also expect a list.

This is a modified and simplified version of `bibtex-completion-open-pdf',
which uses `orb-get-bibdesk-filenames' under the hood and is therefore
compatible with BibDesk.  The file is opened with the function set in
`bibtex-completion-pdf-open-function'.

The intended primary use is with `orb-note-actions'.

(fn CITEKEY)") (autoload 'orb-autokey-generate-key "orb-core" "Generate citation key from ENTRY according to `orb-autokey-format'.
Return a string.  If optional CONTROL-STRING is non-nil, use it
instead of `orb-autokey-format'.

(fn ENTRY &optional CONTROL-STRING)") (register-definition-prefixes "orb-core" '("orb-")) (register-definition-prefixes "orb-helm" '("helm-source-orb-insert" "orb-helm-insert")) (register-definition-prefixes "orb-ivy" '("orb-i")) (autoload 'orb-pdf-scrapper-run "orb-pdf-scrapper" "Run Orb PDF Scrapper interactive process.
KEY is note's citation key.

(fn KEY)" t) (register-definition-prefixes "orb-pdf-scrapper" '("orb-")) (autoload 'orb-section-reference "orb-section" "Show BibTeX reference for NODE if it exists.

(fn NODE)") (autoload 'orb-section-abstract "orb-section" "Show BibTeX entry abstract for NODE if it exists.

(fn NODE)") (autoload 'orb-section-file "orb-section" "Show a link to entry file for NODE if it exists.

(fn NODE)") (register-definition-prefixes "orb-section" '("orb-section-")) (register-definition-prefixes "orb-utils" '("orb-")) (autoload 'orb-edit-note "org-roam-bibtex" "Open an Org-roam note associated with the CITEKEY or create a new one.

This function allows to use Org-roam as a backend for managing
bibliography notes.  It relies on `bibtex-completion' to get
retrieve bibliographic information from a BibTeX file.

Implementation details and features:

1. This function first tries to find the note file associated
with the citation key CITEKEY.  A citation key is an Org-roam
'ref' set with the '#+ROAM_KEY:' in-buffer keyword or
':ROAM_REFS:' headline property.  Three types of Org-roam 'ref's
are recognized by ORB: Org-ref v2 'cite:citekey' and Org-ref v3
'cite:&citekey' links, and Org-cite '[cite:@citekey]' citations.

2. If the Org-roam reference was found, the function calls
`org-roam-node-find' passing to it the title associated with the
CITEKEY as retrieved by `bibtex-completion-get-entry'.  The
prompt presented by `org-roam-node-find' will thus be
pre-populated with the record title.

3. Optionally, when `orb-preformat-templates' is non-nil, any
prompt wildcards in `orb-templates' or
`org-roam-capture-templates', associated with the bibtex record
fields as specified in `orb-preformat-templates', will be
preformatted.  Both `org-capture-templates' (%^{}) and
`org-roam-capture-templates' (`s-format', ${}) prompt syntaxes
are supported.

See `orb-preformat-keywords' for more details on how
to properly specify prompts for replacement.

Please pay attention when using this feature that by setting
title for preformatting, it will be impossible to change it in
the `org-roam-node-find' interactive prompt since all the
template expansions will have taken place by then.  All the title
wildcards will be replace with the BibTeX field value.

4. Optionally, if you are using Projectile and Persp-mode and
have a dedicated workspace to work with your Org-roam collection,
you may want to set the perspective name and project path in
`orb-persp-project' and `orb-switch-persp' to t.  In this case,
the perspective will be switched to the Org-roam notes project
before calling any Org-roam functions.

If optional argument ENTRY is non-nil, use it to fetch the
bibliographic information.

(fn CITEKEY)") (autoload 'orb-edit-citation-note "org-roam-bibtex" "Edit a note for current Org-cite citation or reference.
If the note does not exist, create a new one.

When used from LISP, if optional ELEMENT is non-nil, use it
instead of the element at point.  ELEMENT should be the Org-cite
citation or reference element.  Providing it allows for quicker
computation.

(fn &optional ELEMENT)" t) (autoload 'orb-insert-link "org-roam-bibtex" "Insert a link to an Org-roam bibliography note.
If the note does not exist yet, it will be created using
`orb-edit-note' function.

\\<universal-argument-map>\\<org-roam-bibtex-mode-map> The
customization option `orb-insert-link-description' determines
what will be used as the link's description.  It is possible to
override the default value of the variable with a numerical
prefix ARG:

`C-1' \\[orb-insert-link] will force `title'
`C-2' \\[orb-insert-link] will force `citekey'

`C-0' \\[orb-insert-link] will force `citation-org-ref-2'
`C-9' \\[orb-insert-link] will force `citation-org-ref-3'
`C-8' \\[orb-insert-link] will force `citation-org-cite'

If a region of text is active (selected) when calling `orb-insert-link',
the text in the region will be replaced with the link and the
text string will be used as the link's description — similar to
`org-roam-node-insert'.

Normally, the case of the link description will be preserved.  It
is possible to force lowercase by supplying either one or three
universal arguments `\\[universal-argument]'.

Finally, `bibtex-completion-cache' will be re-populated if either
two or three universal arguments `\\[universal-argument]' are supplied.

The customization option `orb-insert-interface' allows to set the
completion interface backend for the candidates list.

(fn &optional ARG)" t) (autoload 'orb-note-actions "org-roam-bibtex" "Run an interactive prompt to offer note-related actions.
The prompt interface can be set in `orb-note-actions-interface'.
In addition to default actions, which are not supposed to be
modified, there is a number of prefined extra actions
`orb-note-actions-extra' that can be customized.  Additionally,
user actions can be set in `orb-note-actions-user'." t) (autoload 'orb-org-ref-edit-note "org-roam-bibtex" "Open an Org-roam note associated with the CITEKEY or create a new one.
Set `org-ref-notes-function' to this function if your
bibliography notes are managed by Org-roam and you want some
extra integration between the two packages.

This is a wrapper function around `orb-edit-note' intended for
use with Org-ref.

NOTE: This function is no longer needed for Org-ref v3.

(fn CITEKEY)") (autoload 'orb-citar-edit-note "org-roam-bibtex" "Open an Org-roam note associated with the CITEKEY or create a new one.
This is a wrapper function around `orb-edit-note' meant to be used with
`citar-file-open-note-function'.
Optional argument ENTRY is ignored.

(fn CITEKEY &optional ENTRY)") (autoload 'orb-bibtex-completion-edit-note "org-roam-bibtex" "Open or create an Org-roam note.

This is a wrapper function around `orb-edit-note' meant to be
used with `bibtex-completion-edit-notes-function'.

Only the first KEY of the list KEYS will actually be used.  KEY
must be a string.

(fn KEYS)") (defvar org-roam-bibtex-mode nil "Non-nil if Org-Roam-Bibtex mode is enabled.
See the `org-roam-bibtex-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `org-roam-bibtex-mode'.") (custom-autoload 'org-roam-bibtex-mode "org-roam-bibtex" nil) (autoload 'org-roam-bibtex-mode "org-roam-bibtex" "Sets an appropriate function for editing bibliography notes.
Supports Org-ref, Helm-bibtex/Ivy-bibtex, and Citar.

When called interactively, toggle `org-roam-bibtex-mode'. with
prefix ARG, enable `org-roam-bibtex-mode' if ARG is positive,
otherwise disable it.

When called from Lisp, enable `org-roam-bibtex-mode' if ARG is
omitted, nil, or positive.  If ARG is `toggle', toggle
`org-roam-bibtex-mode'.  Otherwise, behave as if called
interactively.

(fn &optional ARG)" t) (register-definition-prefixes "org-roam-bibtex" '("orb-" "org-roam-bibtex-mode-map")) (provide 'org-roam-bibtex-autoloads)) "deft" ((deft deft-autoloads) (autoload 'deft-find-file "deft" "Find FILE interactively using the minibuffer.
FILE must exist and be a relative or absolute path, with extension.
If FILE is not inside `deft-directory', fall back to using `find-file'.

(fn FILE)" t) (autoload 'deft-new-file "deft" "Create a new file quickly.
Use either an automatically generated filename or the filter string if non-nil
and `deft-use-filter-string-for-filename' is set.  If the filter string is
non-nil and title is not from filename, use it as the title." t) (autoload 'deft "deft" "Switch to *Deft* buffer and load files." t) (register-definition-prefixes "deft" '("deft-" "org-deft-store-link")) (provide 'deft-autoloads)) "request" ((request request-autoloads) (autoload 'request-response-header "request" "Fetch the values of RESPONSE header field named FIELD-NAME.

It returns comma separated values when the header has multiple
field with the same name, as :RFC:`2616` specifies.

Examples::

  (request-response-header response
                           \"content-type\") ; => \"text/html; charset=utf-8\"
  (request-response-header response
                           \"unknown-field\") ; => nil

(fn RESPONSE FIELD-NAME)") (autoload 'request-response-headers "request" "Return RESPONSE headers as an alist.
I would have chosen a function name that wasn't so suggestive that
`headers` is a member of the `request-response` struct, but
as there's already precedent with `request-response-header', I
hew to consistency.

(fn RESPONSE)") (autoload 'request "request" "Main entry requesting URL with property list SETTINGS as follow.

==================== ========================================================
Keyword argument      Explanation
==================== ========================================================
TYPE          (string)   type of request to make: POST/GET/PUT/DELETE
PARAMS         (alist)   set \"?key=val\" part in URL
DATA    (string/alist)   data to be sent to the server
FILES          (alist)   files to be sent to the server (see below)
PARSER        (symbol)   a function that reads current buffer and return data
HEADERS        (alist)   additional headers to send with the request
ENCODING      (symbol)   encoding for request body (utf-8 by default)
SUCCESS     (function)   called on success
ERROR       (function)   called on error
COMPLETE    (function)   called on both success and error
TIMEOUT       (number)   timeout in second
STATUS-CODE    (alist)   map status code (int) to callback
SYNC            (bool)   If non-nil, wait until request is done. Default is nil.
==================== ========================================================


* Callback functions

Callback functions STATUS, ERROR, COMPLETE and `cdr\\='s in element of
the alist STATUS-CODE take same keyword arguments listed below.  For
forward compatibility, these functions must ignore unused keyword
arguments (i.e., it\\='s better to use `&allow-other-keys\\=' [#]_).::

    (CALLBACK                      ; SUCCESS/ERROR/COMPLETE/STATUS-CODE
     :data          data           ; whatever PARSER function returns, or nil
     :error-thrown  error-thrown   ; (ERROR-SYMBOL . DATA), or nil
     :symbol-status symbol-status  ; success/error/timeout/abort/parse-error
     :response      response       ; request-response object
     ...)

.. [#] `&allow-other-keys\\=' is a special \"markers\" available in macros
   in the CL library for function definition such as `cl-defun\\=' and
   `cl-function\\='.  Without this marker, you need to specify all arguments
   to be passed.  This becomes problem when request.el adds new arguments
   when calling callback functions.  If you use `&allow-other-keys\\='
   (or manually ignore other arguments), your code is free from this
   problem.  See info node `(cl) Argument Lists\\=' for more information.

Arguments data, error-thrown, symbol-status can be accessed by
`request-response-data\\=', `request-response-error-thrown\\=',
`request-response-symbol-status\\=' accessors, i.e.::

    (request-response-data RESPONSE)  ; same as data

Response object holds other information which can be accessed by
the following accessors:
`request-response-status-code\\=',
`request-response-url\\=' and
`request-response-settings\\='

* STATUS-CODE callback

STATUS-CODE is an alist of the following format::

    ((N-1 . CALLBACK-1)
     (N-2 . CALLBACK-2)
     ...)

Here, N-1, N-2,... are integer status codes such as 200.


* FILES

FILES is an alist of the following format::

    ((NAME-1 . FILE-1)
     (NAME-2 . FILE-2)
     ...)

where FILE-N is a list of the form::

    (FILENAME &key PATH BUFFER STRING MIME-TYPE)

FILE-N can also be a string (path to the file) or a buffer object.
In that case, FILENAME is set to the file name or buffer name.

Example FILES argument::

    `((\"passwd\"   . \"/etc/passwd\")                ; filename = passwd
      (\"scratch\"  . ,(get-buffer \"*scratch*\"))    ; filename = *scratch*
      (\"passwd2\"  . (\"password.txt\" :file \"/etc/passwd\"))
      (\"scratch2\" . (\"scratch.txt\"  :buffer ,(get-buffer \"*scratch*\")))
      (\"data\"     . (\"data.csv\"     :data \"1,2,3\\n4,5,6\\n\")))

.. note:: FILES is implemented only for curl backend for now.
   As furl.el_ supports multipart POST, it should be possible to
   support FILES in pure elisp by making furl.el_ another backend.
   Contributions are welcome.

   .. _furl.el: https://code.google.com/p/furl-el/


* PARSER function

PARSER function takes no argument and it is executed in the
buffer with HTTP response body.  The current position in the HTTP
response buffer is at the beginning of the buffer.  As the HTTP
header is stripped off, the cursor is actually at the beginning
of the response body.  So, for example, you can pass `json-read\\='
to parse JSON object in the buffer.  To fetch whole response as a
string, pass `buffer-string\\='.

When using `json-read\\=', it is useful to know that the returned
type can be modified by `json-object-type\\=', `json-array-type\\=',
`json-key-type\\=', `json-false\\=' and `json-null\\='.  See docstring of
each function for what it does.  For example, to convert JSON
objects to plist instead of alist, wrap `json-read\\=' by `lambda\\='
like this.::

    (request
     \"https://...\"
     :parser (lambda ()
               (let ((json-object-type \\='plist))
                 (json-read)))
     ...)

This is analogous to the `dataType\\=' argument of jQuery.ajax_.
Only this function can access to the process buffer, which
is killed immediately after the execution of this function.

* SYNC

Synchronous request is functional, but *please* don\\='t use it
other than testing or debugging.  Emacs users have better things
to do rather than waiting for HTTP request.  If you want a better
way to write callback chains, use `request-deferred\\='.

If you can\\='t avoid using it (e.g., you are inside of some hook
which must return some value), make sure to set TIMEOUT to
relatively small value.

Due to limitation of `url-retrieve-synchronously\\=', response slots
`request-response-error-thrown\\=', `request-response-history\\=' and
`request-response-url\\=' are unknown (always nil) when using
synchronous request with `url-retrieve\\=' backend.

* Note

API of `request\\=' is somewhat mixture of jQuery.ajax_ (Javascript)
and requests.request_ (Python).

.. _jQuery.ajax: https://api.jquery.com/jQuery.ajax/
.. _requests.request: https://docs.python-requests.org

(fn URL &rest SETTINGS &key (PARAMS nil) (DATA nil) (HEADERS nil) (ENCODING \\='utf-8) (ERROR nil) (SYNC nil) (RESPONSE (make-request-response)) &allow-other-keys)") (function-put 'request 'lisp-indent-function 'defun) (autoload 'request-untrampify-filename "request" "Return FILE as the local file name.

(fn FILE)") (autoload 'request-abort "request" "Abort request for RESPONSE (the object returned by `request').
Note that this function invoke ERROR and COMPLETE callbacks.
Callbacks may not be called immediately but called later when
associated process is exited.

(fn RESPONSE)") (register-definition-prefixes "request" '("request-")) (provide 'request-autoloads)) "mw-thesaurus" ((mw-thesaurus mw-thesaurus-autoloads) (autoload 'mw-thesaurus-lookup-dwim "mw-thesaurus" "Look up a thesaurus definition on demand using Merriam-Webster online dictionary.
If a region is selected use mw-thesaurus-lookup-word
if a thing at point is not empty use mw-thesaurus-lookup-word-at-point
otherwise as for word using mw-thesaurus-lookup-word" t) (autoload 'mw-thesaurus-lookup-at-point "mw-thesaurus" "Look up a thesaurus definition for word at point using Merriam-Webster online dictionary.

(fn WORD-POINT)" t) (autoload 'mw-thesaurus-lookup "mw-thesaurus" "Look up a thesaurus definition for word using Merriam-Webster online dictionary.
`BEGINNING' and `END' correspond to the selected text with a word to look up.
If there is no selection provided, additional input will be required.

(fn &optional BEGINNING END)" t) (register-definition-prefixes "mw-thesaurus" '("mw-thesaurus-")) (provide 'mw-thesaurus-autoloads)) "flyspell-correct" ((flyspell-correct flyspell-correct-ido flyspell-correct-autoloads) (autoload 'flyspell-correct-at-point "flyspell-correct" "Correct word before point using `flyspell-correct-interface'.
Adapted from `flyspell-correct-word-before-point'." t) (autoload 'flyspell-correct-previous "flyspell-correct" "Correct the first misspelled word that occurs before POSITION.
But don't look beyond what's visible on the screen.

Uses `flyspell-correct-at-point' function for correction.

With a prefix argument, automatically continues to all prior misspelled words in the buffer.

(fn POSITION)" t) (autoload 'flyspell-correct-next "flyspell-correct" "Correct the first misspelled word that occurs after POSITION.

Uses `flyspell-correct-at-point' function for correction.

With a prefix argument, automatically continues to all further
misspelled words in the buffer.

(fn POSITION)" t) (autoload 'flyspell-correct-wrapper "flyspell-correct" "Correct spelling error in a dwim fashion based on universal argument.

- One \\[universal-argument] enables rapid mode.
- Two \\[universal-argument]'s changes direction of spelling
  errors search.
- Three \\[universal-argument]'s changes direction of spelling
  errors search and enables rapid mode." t) (autoload 'flyspell-correct-move "flyspell-correct" "Correct the first misspelled word that occurs before POSITION.

Uses `flyspell-correct-at-point' function for correction.

With FORWARD set non-nil, check forward instead of backward.

With RAPID set non-nil, automatically continues in direction
until all errors in buffer have been addressed.

(fn POSITION &optional FORWARD RAPID)" t) (autoload 'flyspell-correct-auto-mode "flyspell-correct" "Minor mode for automatically correcting word at point.

Take my advice and don't use this functionality unless you find
`flyspell-correct-previous' function useless for your purposes.
Seriously, just try named function for completion. You can find
more info in comment[1].

[1]:
https://github.com/syl20bnr/spacemacs/issues/6209#issuecomment-274320376

This is a minor mode.  If called interactively, toggle the
`Flyspell-Correct-Auto mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `flyspell-correct-auto-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "flyspell-correct" '("flyspell-correct-")) (autoload 'flyspell-correct-ido "flyspell-correct-ido" "Run `ido-completing-read' for the given CANDIDATES.

List of CANDIDATES is given by flyspell for the WORD.

Return a selected word to use as a replacement or a tuple
of (command, word) to be used by `flyspell-do-correct'.

(fn CANDIDATES WORD)") (provide 'flyspell-correct-autoloads)) "flyspell-correct-ivy" ((flyspell-correct-ivy-autoloads flyspell-correct-ivy) (autoload 'flyspell-correct-ivy "flyspell-correct-ivy" "Run `ivy-read' for the given CANDIDATES.

List of CANDIDATES is given by flyspell for the WORD.

Return result according to `flyspell-correct-interface'
specification.

(fn CANDIDATES WORD)") (register-definition-prefixes "flyspell-correct-ivy" '("flyspell-correct-ivy-")) (provide 'flyspell-correct-ivy-autoloads)) "academic-phrases" ((academic-phrases-autoloads academic-phrases) (autoload 'academic-phrases "academic-phrases" "Insert a phrase from a list of academic phrases by topic." t) (autoload 'academic-phrases-by-section "academic-phrases" "Insert a phrase from a list of academic phrases by the paper section." t) (register-definition-prefixes "academic-phrases" '("academic-phrases--")) (provide 'academic-phrases-autoloads)) "smartparens" ((smartparens-latex smartparens-clojure smartparens-ml smartparens-c smartparens-autoloads smartparens-rust smartparens-pkg smartparens-unison smartparens-crystal smartparens-ruby smartparens-elixir smartparens-config smartparens smartparens-haskell smartparens-ess smartparens-racket smartparens-python smartparens-lua smartparens-scala sp-sublimetext-like smartparens-go smartparens-markdown smartparens-text smartparens-swift smartparens-org smartparens-erlang smartparens-rst smartparens-html smartparens-javascript) (autoload 'sp-cheat-sheet "smartparens" "Generate a cheat sheet of all the smartparens interactive functions.

Without a prefix argument, print only the short documentation and examples.

With non-nil prefix argument ARG, show the full documentation for each function.

You can follow the links to the function or variable help page.
To get back to the full list, use \\[help-go-back].

You can use `beginning-of-defun' and `end-of-defun' to jump to
the previous/next entry.

Examples are fontified using the `font-lock-string-face' for
better orientation.

(fn &optional ARG)" t) (defvar smartparens-mode-map (make-sparse-keymap) "Keymap used for `smartparens-mode'.") (autoload 'sp-use-paredit-bindings "smartparens" "Initiate `smartparens-mode-map' with `sp-paredit-bindings'." t) (autoload 'sp-use-smartparens-bindings "smartparens" "Initiate `smartparens-mode-map' with `sp-smartparens-bindings'." t) (autoload 'smartparens-mode "smartparens" "Toggle smartparens mode.

You can enable pre-set bindings by customizing
`sp-base-key-bindings' variable.  The current content of
`smartparens-mode-map' is:

 \\{smartparens-mode-map}

This is a minor mode.  If called interactively, toggle the
`Smartparens mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `smartparens-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'smartparens-strict-mode "smartparens" "Toggle the strict smartparens mode.

When strict mode is active, `delete-char', `kill-word' and their
backward variants will skip over the pair delimiters in order to
keep the structure always valid (the same way as `paredit-mode'
does).  This is accomplished by remapping them to
`sp-delete-char' and `sp-kill-word'.  There is also function
`sp-kill-symbol' that deletes symbols instead of words, otherwise
working exactly the same (it is not bound to any key by default).

When strict mode is active, this is indicated with \"/s\"
after the smartparens indicator in the mode list.

This is a minor mode.  If called interactively, toggle the
`Smartparens-Strict mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `smartparens-strict-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (put 'smartparens-global-strict-mode 'globalized-minor-mode t) (defvar smartparens-global-strict-mode nil "Non-nil if Smartparens-Global-Strict mode is enabled.
See the `smartparens-global-strict-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-strict-mode'.") (custom-autoload 'smartparens-global-strict-mode "smartparens" nil) (autoload 'smartparens-global-strict-mode "smartparens" "Toggle Smartparens-Strict mode in all buffers.
With prefix ARG, enable Smartparens-Global-Strict mode if ARG is
positive; otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Smartparens-Strict mode is enabled in all buffers where
`turn-on-smartparens-strict-mode' would do it.

See `smartparens-strict-mode' for more information on
Smartparens-Strict mode.

(fn &optional ARG)" t) (autoload 'turn-on-smartparens-strict-mode "smartparens" "Turn on `smartparens-strict-mode'." t) (autoload 'turn-off-smartparens-strict-mode "smartparens" "Turn off `smartparens-strict-mode'." t) (put 'smartparens-global-mode 'globalized-minor-mode t) (defvar smartparens-global-mode nil "Non-nil if Smartparens-Global mode is enabled.
See the `smartparens-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-mode'.") (custom-autoload 'smartparens-global-mode "smartparens" nil) (autoload 'smartparens-global-mode "smartparens" "Toggle Smartparens mode in all buffers.
With prefix ARG, enable Smartparens-Global mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Smartparens mode is enabled in all buffers where
`turn-on-smartparens-mode' would do it.

See `smartparens-mode' for more information on Smartparens mode.

(fn &optional ARG)" t) (autoload 'turn-on-smartparens-mode "smartparens" "Turn on `smartparens-mode'.

This function is used to turn on `smartparens-global-mode'.

By default `smartparens-global-mode' ignores buffers with
`mode-class' set to special, but only if they are also not comint
buffers.

Additionally, buffers on `sp-ignore-modes-list' are ignored.

You can still turn on smartparens in these mode manually (or
in mode's startup-hook etc.) by calling `smartparens-mode'." t) (autoload 'turn-off-smartparens-mode "smartparens" "Turn off `smartparens-mode'." t) (autoload 'show-smartparens-mode "smartparens" "Toggle visualization of matching pairs.  When enabled, any

matching pair is highlighted after `sp-show-pair-delay' seconds
of Emacs idle time if the point is immediately in front or after
a pair.  This mode works similarly to `show-paren-mode', but
support custom pairs.

This is a minor mode.  If called interactively, toggle the
`Show-Smartparens mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `show-smartparens-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (put 'show-smartparens-global-mode 'globalized-minor-mode t) (defvar show-smartparens-global-mode nil "Non-nil if Show-Smartparens-Global mode is enabled.
See the `show-smartparens-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `show-smartparens-global-mode'.") (custom-autoload 'show-smartparens-global-mode "smartparens" nil) (autoload 'show-smartparens-global-mode "smartparens" "Toggle Show-Smartparens mode in all buffers.
With prefix ARG, enable Show-Smartparens-Global mode if ARG is
positive; otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Show-Smartparens mode is enabled in all buffers where
`turn-on-show-smartparens-mode' would do it.

See `show-smartparens-mode' for more information on Show-Smartparens
mode.

(fn &optional ARG)" t) (autoload 'turn-on-show-smartparens-mode "smartparens" "Turn on `show-smartparens-mode'." t) (autoload 'turn-off-show-smartparens-mode "smartparens" "Turn off `show-smartparens-mode'." t) (register-definition-prefixes "smartparens" '("smartparens-" "sp-")) (register-definition-prefixes "smartparens-clojure" '("sp-clojure-prefix")) (register-definition-prefixes "smartparens-config" '("sp-lisp-invalid-hyperlink-p")) (register-definition-prefixes "smartparens-crystal" '("sp-crystal-")) (register-definition-prefixes "smartparens-elixir" '("sp-elixir-")) (register-definition-prefixes "smartparens-ess" '("sp-ess-")) (register-definition-prefixes "smartparens-haskell" '("sp-")) (register-definition-prefixes "smartparens-html" '("sp-html-")) (register-definition-prefixes "smartparens-latex" '("sp-latex-")) (register-definition-prefixes "smartparens-lua" '("sp-lua-post-keyword-insert")) (register-definition-prefixes "smartparens-markdown" '("sp-")) (register-definition-prefixes "smartparens-org" '("sp-")) (register-definition-prefixes "smartparens-python" '("sp-python-")) (register-definition-prefixes "smartparens-rst" '("sp-rst-point-after-backtick")) (register-definition-prefixes "smartparens-ruby" '("sp-")) (register-definition-prefixes "smartparens-rust" '("sp-")) (register-definition-prefixes "smartparens-scala" '("sp-scala-wrap-with-indented-newlines")) (register-definition-prefixes "smartparens-swift" '("sp-swift-")) (register-definition-prefixes "smartparens-text" '("sp-text-mode-")) (register-definition-prefixes "sp-sublimetext-like" '("sp-point-not-before-word")) (provide 'smartparens-autoloads)) "olivetti" ((olivetti olivetti-autoloads) (autoload 'olivetti-mode "olivetti" "Olivetti provides a nice writing environment.

Window margins are set to relative widths to accomodate a text
body width set with `olivetti-body-width'.

This is a minor mode.  If called interactively, toggle the
`Olivetti mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `olivetti-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "olivetti" '("olivetti-")) (provide 'olivetti-autoloads)) "pyvenv" ((pyvenv pyvenv-autoloads) (autoload 'pyvenv-activate "pyvenv" "Activate the virtual environment in DIRECTORY.

(fn DIRECTORY)" t) (autoload 'pyvenv-deactivate "pyvenv" "Deactivate any current virtual environment." t) (autoload 'pyvenv-workon "pyvenv" "Activate a virtual environment from $WORKON_HOME.

If the virtual environment NAME is already active, this function
does not try to reactivate the environment.

(fn NAME)" t) (defvar pyvenv-mode nil "Non-nil if Pyvenv mode is enabled.
See the `pyvenv-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-mode'.") (custom-autoload 'pyvenv-mode "pyvenv" nil) (autoload 'pyvenv-mode "pyvenv" "Global minor mode for pyvenv.

Will show the current virtualenv in the mode line, and respect a
`pyvenv-workon' setting in files.

This is a global minor mode.  If called interactively, toggle the
`Pyvenv mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='pyvenv-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (defvar pyvenv-tracking-mode nil "Non-nil if Pyvenv-Tracking mode is enabled.
See the `pyvenv-tracking-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-tracking-mode'.") (custom-autoload 'pyvenv-tracking-mode "pyvenv" nil) (autoload 'pyvenv-tracking-mode "pyvenv" "Global minor mode to track the current virtualenv.

When this mode is active, pyvenv will activate a buffer-specific
virtualenv whenever the user switches to a buffer with a
buffer-local `pyvenv-workon' or `pyvenv-activate' variable.

This is a global minor mode.  If called interactively, toggle the
`Pyvenv-Tracking mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='pyvenv-tracking-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'pyvenv-restart-python "pyvenv" "Restart Python inferior processes." t) (register-definition-prefixes "pyvenv" '("pyvenv-")) (provide 'pyvenv-autoloads)) "spinner" ((spinner-autoloads spinner) (autoload 'spinner-create "spinner" "Create a spinner of the given TYPE.
The possible TYPEs are described in `spinner--type-to-frames'.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

If BUFFER-LOCAL is non-nil, the spinner will be automatically
deactivated if the buffer is killed.  If BUFFER-LOCAL is a
buffer, use that instead of current buffer.

When started, in order to function properly, the spinner runs a
timer which periodically calls `force-mode-line-update' in the
current buffer.  If BUFFER-LOCAL was set at creation time, then
`force-mode-line-update' is called in that buffer instead.  When
the spinner is stopped, the timer is deactivated.

DELAY, if given, is the number of seconds to wait after starting
the spinner before actually displaying it. It is safe to cancel
the spinner before this time, in which case it won't display at
all.

(fn &optional TYPE BUFFER-LOCAL FPS DELAY)") (autoload 'spinner-start "spinner" "Start a mode-line spinner of given TYPE-OR-OBJECT.
If TYPE-OR-OBJECT is an object created with `make-spinner',
simply activate it.  This method is designed for minor modes, so
they can use the spinner as part of their lighter by doing:
    \\='(:eval (spinner-print THE-SPINNER))
To stop this spinner, call `spinner-stop' on it.

If TYPE-OR-OBJECT is anything else, a buffer-local spinner is
created with this type, and it is displayed in the
`mode-line-process' of the buffer it was created it.  Both
TYPE-OR-OBJECT and FPS are passed to `make-spinner' (which see).
To stop this spinner, call `spinner-stop' in the same buffer.

Either way, the return value is a function which can be called
anywhere to stop this spinner.  You can also call `spinner-stop'
in the same buffer where the spinner was created.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

DELAY, if given, is the number of seconds to wait until actually
displaying the spinner. It is safe to cancel the spinner before
this time, in which case it won't display at all.

(fn &optional TYPE-OR-OBJECT FPS DELAY)") (register-definition-prefixes "spinner" '("spinner-")) (provide 'spinner-autoloads)) "markdown-mode" ((markdown-mode-autoloads markdown-mode) (autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files.

(fn)" t) (add-to-list 'auto-mode-alist '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode)) (autoload 'gfm-mode "markdown-mode" "Major mode for editing GitHub Flavored Markdown files.

(fn)" t) (autoload 'markdown-view-mode "markdown-mode" "Major mode for viewing Markdown content.

(fn)" t) (autoload 'gfm-view-mode "markdown-mode" "Major mode for viewing GitHub Flavored Markdown content.

(fn)" t) (autoload 'markdown-live-preview-mode "markdown-mode" "Toggle native previewing on save for a specific markdown file.

This is a minor mode.  If called interactively, toggle the
`Markdown-Live-Preview mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `markdown-live-preview-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "markdown-mode" '("defun-markdown-" "gfm-" "markdown")) (provide 'markdown-mode-autoloads)) "eldoc" ((eldoc-autoloads eldoc) (defvar eldoc-minor-mode-string (purecopy " ElDoc") "String to display in mode line when ElDoc Mode is enabled; nil for none.") (custom-autoload 'eldoc-minor-mode-string "eldoc" t) (autoload 'eldoc-mode "eldoc" "Toggle echo area display of Lisp objects at point (ElDoc mode).

ElDoc mode is a buffer-local minor mode.  When enabled, the echo
area displays information about a function or variable in the
text where point is.  If point is on a documented variable, it
displays the first line of that variable's doc string.  Otherwise
it displays the argument list of the function called in the
expression point is on.

This is a minor mode.  If called interactively, toggle the `Eldoc
mode' mode.  If the prefix argument is positive, enable the mode,
and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `eldoc-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (put 'global-eldoc-mode 'globalized-minor-mode t) (defcustom global-eldoc-mode t "Non-nil if Global Eldoc mode is enabled.
See the `global-eldoc-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-eldoc-mode'." :set #'custom-set-minor-mode :initialize 'custom-initialize-delay :type 'boolean) (custom-autoload 'global-eldoc-mode "eldoc" nil) (autoload 'global-eldoc-mode "eldoc" "Toggle Eldoc mode in all buffers.
With prefix ARG, enable Global Eldoc mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Eldoc mode is enabled in all buffers where `turn-on-eldoc-mode' would
do it.

See `eldoc-mode' for more information on Eldoc mode.

(fn &optional ARG)" t) (autoload 'turn-on-eldoc-mode "eldoc" "Turn on `eldoc-mode' if the buffer has ElDoc support enabled.
See `eldoc-documentation-strategy' for more detail.") (register-definition-prefixes "eldoc" '("eldoc")) (provide 'eldoc-autoloads)) "lsp-mode" ((lsp-pls lsp-svelte lsp-yaml lsp-vhdl lsp-groovy lsp-haxe lsp-magik lsp-perl lsp-fsharp lsp-openscad lsp-clangd lsp-graphql lsp-sqls lsp-v lsp-crystal lsp-sml lsp-gdscript lsp-idris lsp-steep lsp-nginx lsp-nix lsp-angular lsp-kotlin lsp-purescript lsp-actionscript lsp-ansible lsp-elixir lsp-clojure lsp-astro lsp-dockerfile lsp-volar lsp-mode-autoloads lsp-headerline lsp-ttcn3 lsp-ocaml lsp-dired lsp-rust lsp-sorbet lsp-semantic-tokens lsp-remark lsp-emmet lsp-dot lsp-vimscript lsp-ruby-lsp lsp-r lsp-cmake lsp-prolog lsp-verilog lsp-vetur lsp-xml lsp-lua lsp-rf lsp-glsl lsp-lens lsp-pyls lsp-pwsh lsp-awk lsp-toml lsp-d lsp-perlnavigator lsp-racket lsp-icons lsp-go lsp-camel lsp-modeline lsp-ada lsp-iedit lsp-diagnostics lsp-mode lsp-html lsp-javascript lsp-ruff-lsp lsp-markdown lsp-css lsp-typeprof lsp lsp-ido lsp-bash lsp-solargraph lsp-fortran lsp-erlang lsp-terraform lsp-php lsp-beancount lsp-json lsp-semgrep lsp-gleam lsp-nim lsp-ruby-syntax-tree lsp-tex lsp-tilt lsp-hack lsp-csharp lsp-elm lsp-vala lsp-protocol lsp-pylsp lsp-zig lsp-credo lsp-completion lsp-marksman lsp-dhall lsp-eslint lsp-mint) (register-definition-prefixes "lsp-actionscript" '("lsp-actionscript-")) (register-definition-prefixes "lsp-ada" '("lsp-ada-")) (register-definition-prefixes "lsp-angular" '("lsp-client")) (register-definition-prefixes "lsp-ansible" '("lsp-ansible-")) (register-definition-prefixes "lsp-astro" '("lsp-astro--get-initialization-options")) (register-definition-prefixes "lsp-awk" '("lsp-awk-executable")) (register-definition-prefixes "lsp-bash" '("lsp-bash-")) (register-definition-prefixes "lsp-beancount" '("lsp-beancount-")) (register-definition-prefixes "lsp-camel" '("lsp-camel-")) (autoload 'lsp-cpp-flycheck-clang-tidy-error-explainer "lsp-clangd" "Explain a clang-tidy ERROR by scraping documentation from llvm.org.

(fn ERROR)") (register-definition-prefixes "lsp-clangd" '("lsp-c")) (autoload 'lsp-clojure-show-test-tree "lsp-clojure" "Show a test tree and focus on it if IGNORE-FOCUS? is nil.

(fn IGNORE-FOCUS?)" t) (register-definition-prefixes "lsp-clojure" '("lsp-clojure-")) (define-obsolete-variable-alias 'lsp-prefer-capf 'lsp-completion-provider "lsp-mode 7.0.1") (define-obsolete-variable-alias 'lsp-enable-completion-at-point 'lsp-completion-enable "lsp-mode 7.0.1") (autoload 'lsp-completion-at-point "lsp-completion" "Get lsp completions.") (autoload 'lsp-completion--enable "lsp-completion" "Enable LSP completion support.") (autoload 'lsp-completion-mode "lsp-completion" "Toggle LSP completion support.

This is a minor mode.  If called interactively, toggle the
`Lsp-Completion mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-completion-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (add-hook 'lsp-configure-hook (lambda nil (when (and lsp-auto-configure lsp-completion-enable) (lsp-completion--enable)))) (register-definition-prefixes "lsp-completion" '("lsp-")) (register-definition-prefixes "lsp-credo" '("lsp-credo-")) (register-definition-prefixes "lsp-crystal" '("lsp-clients-crystal-executable")) (register-definition-prefixes "lsp-csharp" '("lsp-csharp-")) (register-definition-prefixes "lsp-css" '("lsp-css-")) (define-obsolete-variable-alias 'lsp-diagnostic-package 'lsp-diagnostics-provider "lsp-mode 7.0.1") (define-obsolete-variable-alias 'lsp-flycheck-default-level 'lsp-diagnostics-flycheck-default-level "lsp-mode 7.0.1") (autoload 'lsp-diagnostics-lsp-checker-if-needed "lsp-diagnostics") (autoload 'lsp-diagnostics--enable "lsp-diagnostics" "Enable LSP checker support.") (autoload 'lsp-diagnostics-mode "lsp-diagnostics" "Toggle LSP diagnostics integration.

This is a minor mode.  If called interactively, toggle the
`Lsp-Diagnostics mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-diagnostics-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (add-hook 'lsp-configure-hook (lambda nil (when lsp-auto-configure (lsp-diagnostics--enable)))) (register-definition-prefixes "lsp-diagnostics" '("lsp-diagnostics-")) (defvar lsp-dired-mode nil "Non-nil if Lsp-Dired mode is enabled.
See the `lsp-dired-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `lsp-dired-mode'.") (custom-autoload 'lsp-dired-mode "lsp-dired" nil) (autoload 'lsp-dired-mode "lsp-dired" "Display `lsp-mode' icons for each file in a dired buffer.

This is a global minor mode.  If called interactively, toggle the
`Lsp-Dired mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='lsp-dired-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "lsp-dired" '("lsp-dired-")) (register-definition-prefixes "lsp-dockerfile" '("lsp-dockerfile-language-server-command")) (register-definition-prefixes "lsp-dot" '("lsp-dot--dot-ls-server-command")) (register-definition-prefixes "lsp-elixir" '("lsp-elixir-")) (register-definition-prefixes "lsp-elm" '("lsp-")) (register-definition-prefixes "lsp-emmet" '("lsp-emmet-ls-command")) (register-definition-prefixes "lsp-erlang" '("lsp-erlang-server-")) (register-definition-prefixes "lsp-eslint" '("lsp-")) (register-definition-prefixes "lsp-fortran" '("lsp-clients-")) (autoload 'lsp-fsharp--workspace-load "lsp-fsharp" "Load all of the provided PROJECTS.

(fn PROJECTS)") (register-definition-prefixes "lsp-fsharp" '("lsp-fsharp-")) (register-definition-prefixes "lsp-gdscript" '("lsp-gdscript-")) (register-definition-prefixes "lsp-gleam" '("lsp-gleam-executable")) (register-definition-prefixes "lsp-glsl" '("lsp-glsl-executable")) (register-definition-prefixes "lsp-go" '("lsp-go-")) (register-definition-prefixes "lsp-graphql" '("lsp-")) (register-definition-prefixes "lsp-groovy" '("lsp-groovy-")) (register-definition-prefixes "lsp-hack" '("lsp-clients-hack-command")) (register-definition-prefixes "lsp-haxe" '("lsp-")) (autoload 'lsp-headerline-breadcrumb-mode "lsp-headerline" "Toggle breadcrumb on headerline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Headerline-Breadcrumb mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-headerline-breadcrumb-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'lsp-breadcrumb-go-to-symbol "lsp-headerline" "Go to the symbol on breadcrumb at SYMBOL-POSITION.

(fn SYMBOL-POSITION)" t) (autoload 'lsp-breadcrumb-narrow-to-symbol "lsp-headerline" "Narrow to the symbol range on breadcrumb at SYMBOL-POSITION.

(fn SYMBOL-POSITION)" t) (register-definition-prefixes "lsp-headerline" '("lsp-headerline-")) (register-definition-prefixes "lsp-html" '("lsp-html-")) (register-definition-prefixes "lsp-icons" '("lsp-")) (autoload 'lsp-ido-workspace-symbol "lsp-ido" "`ido' for lsp workspace/symbol.
When called with prefix ARG the default selection will be symbol at point.

(fn ARG)" t) (register-definition-prefixes "lsp-ido" '("lsp-ido-")) (register-definition-prefixes "lsp-idris" '("lsp-idris2-lsp-")) (autoload 'lsp-iedit-highlights "lsp-iedit" "Start an `iedit' operation on the documentHighlights at point.
This can be used as a primitive `lsp-rename' replacement if the
language server doesn't support renaming.

See also `lsp-enable-symbol-highlighting'." t) (autoload 'lsp-iedit-linked-ranges "lsp-iedit" "Start an `iedit' for `textDocument/linkedEditingRange'" t) (autoload 'lsp-evil-multiedit-highlights "lsp-iedit" "Start an `evil-multiedit' operation on the documentHighlights at point.
This can be used as a primitive `lsp-rename' replacement if the
language server doesn't support renaming.

See also `lsp-enable-symbol-highlighting'." t) (autoload 'lsp-evil-multiedit-linked-ranges "lsp-iedit" "Start an `evil-multiedit' for `textDocument/linkedEditingRange'" t) (autoload 'lsp-evil-state-highlights "lsp-iedit" "Start `iedit-mode'. for `textDocument/documentHighlight'" t) (autoload 'lsp-evil-state-linked-ranges "lsp-iedit" "Start `iedit-mode'. for `textDocument/linkedEditingRange'" t) (register-definition-prefixes "lsp-iedit" '("lsp-iedit--on-ranges")) (register-definition-prefixes "lsp-javascript" '("lsp-")) (register-definition-prefixes "lsp-json" '("lsp-")) (register-definition-prefixes "lsp-kotlin" '("lsp-")) (autoload 'lsp-lens--enable "lsp-lens" "Enable lens mode.") (autoload 'lsp-lens-show "lsp-lens" "Display lenses in the buffer." t) (autoload 'lsp-lens-hide "lsp-lens" "Delete all lenses." t) (autoload 'lsp-lens-mode "lsp-lens" "Toggle code-lens overlays.

This is a minor mode.  If called interactively, toggle the
`Lsp-Lens mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-lens-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'lsp-avy-lens "lsp-lens" "Click lsp lens using `avy' package." t) (register-definition-prefixes "lsp-lens" '("lsp-")) (register-definition-prefixes "lsp-lua" '("lsp-")) (register-definition-prefixes "lsp-magik" '("lsp-magik-")) (register-definition-prefixes "lsp-markdown" '("lsp-markdown-")) (register-definition-prefixes "lsp-marksman" '("lsp-marksman-")) (register-definition-prefixes "lsp-mint" '("lsp-clients-mint-executable")) (put 'lsp-enable-file-watchers 'safe-local-variable #'booleanp) (put 'lsp-file-watch-ignored-directories 'safe-local-variable 'lsp--string-listp) (put 'lsp-file-watch-ignored-files 'safe-local-variable 'lsp--string-listp) (put 'lsp-file-watch-threshold 'safe-local-variable (lambda (i) (or (numberp i) (not i)))) (autoload 'lsp--string-listp "lsp-mode" "Return t if all elements of SEQUENCE are strings, else nil.

(fn SEQUENCE)") (autoload 'lsp-load-vscode-workspace "lsp-mode" "Load vscode workspace from FILE

(fn FILE)" t) (autoload 'lsp-save-vscode-workspace "lsp-mode" "Save vscode workspace to FILE

(fn FILE)" t) (autoload 'lsp-install-server "lsp-mode" "Interactively install or re-install server.
When prefix UPDATE? is t force installation even if the server is present.

(fn UPDATE? &optional SERVER-ID)" t) (autoload 'lsp-uninstall-server "lsp-mode" "Delete a LSP server from `lsp-server-install-dir'.

(fn DIR)" t) (autoload 'lsp-uninstall-servers "lsp-mode" "Uninstall all installed servers." t) (autoload 'lsp-update-server "lsp-mode" "Interactively update (reinstall) a server.

(fn &optional SERVER-ID)" t) (autoload 'lsp-update-servers "lsp-mode" "Update (reinstall) all installed servers." t) (autoload 'lsp-ensure-server "lsp-mode" "Ensure server SERVER-ID

(fn SERVER-ID)") (autoload 'lsp "lsp-mode" "Entry point for the server startup.
When ARG is t the lsp mode will start new language server even if
there is language server which can handle current language. When
ARG is nil current file will be opened in multi folder language
server if there is such. When `lsp' is called with prefix
argument ask the user to select which language server to start.

(fn &optional ARG)" t) (autoload 'lsp-deferred "lsp-mode" "Entry point that defers server startup until buffer is visible.
`lsp-deferred' will wait until the buffer is visible before invoking `lsp'.
This avoids overloading the server with many files when starting Emacs.") (autoload 'lsp-start-plain "lsp-mode" "Start `lsp-mode' using minimal configuration using the latest `melpa' version
of the packages.

In case the major-mode that you are using for " t) (register-definition-prefixes "lsp-mode" '("defcustom-lsp" "lsp-" "make-lsp-client" "when-lsp-workspace" "with-lsp-workspace")) (define-obsolete-variable-alias 'lsp-diagnostics-modeline-scope 'lsp-modeline-diagnostics-scope "lsp-mode 7.0.1") (autoload 'lsp-modeline-code-actions-mode "lsp-modeline" "Toggle code actions on modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Code-Actions mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-modeline-code-actions-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (define-obsolete-function-alias 'lsp-diagnostics-modeline-mode 'lsp-modeline-diagnostics-mode "lsp-mode 7.0.1") (autoload 'lsp-modeline-diagnostics-mode "lsp-modeline" "Toggle diagnostics modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Diagnostics mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-modeline-diagnostics-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (autoload 'lsp-modeline-workspace-status-mode "lsp-modeline" "Toggle workspace status on modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Workspace-Status mode' mode.  If the prefix
argument is positive, enable the mode, and if it is zero or
negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-modeline-workspace-status-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "lsp-modeline" '("lsp-")) (register-definition-prefixes "lsp-nginx" '("lsp-nginx-server-command")) (register-definition-prefixes "lsp-nim" '("lsp-nim-l")) (register-definition-prefixes "lsp-nix" '("lsp-nix-")) (register-definition-prefixes "lsp-ocaml" '("lsp-")) (register-definition-prefixes "lsp-openscad" '("lsp-openscad-")) (register-definition-prefixes "lsp-perl" '("lsp-perl-")) (register-definition-prefixes "lsp-perlnavigator" '("lsp-perlnavigator-")) (register-definition-prefixes "lsp-php" '("lsp-")) (register-definition-prefixes "lsp-pls" '("lsp-pls-")) (register-definition-prefixes "lsp-prolog" '("lsp-prolog-server-command")) (register-definition-prefixes "lsp-protocol" '("dash-expand:&RangeToPoint" "lsp")) (register-definition-prefixes "lsp-purescript" '("lsp-purescript-")) (register-definition-prefixes "lsp-pwsh" '("lsp-pwsh-")) (register-definition-prefixes "lsp-pyls" '("lsp-")) (register-definition-prefixes "lsp-pylsp" '("lsp-")) (register-definition-prefixes "lsp-r" '("lsp-clients-r-server-command")) (register-definition-prefixes "lsp-racket" '("lsp-racket-lang")) (register-definition-prefixes "lsp-remark" '("lsp-remark-server-command")) (register-definition-prefixes "lsp-rf" '("expand-start-command" "lsp-rf-language-server-" "parse-rf-language-server-")) (register-definition-prefixes "lsp-ruby-lsp" '("lsp-ruby-lsp-")) (register-definition-prefixes "lsp-ruby-syntax-tree" '("lsp-ruby-syntax-tree-")) (register-definition-prefixes "lsp-ruff-lsp" '("lsp-ruff-lsp-")) (register-definition-prefixes "lsp-rust" '("lsp-")) (defvar-local semantic-token-modifier-cache (make-hash-table) "A cache of modifier values to the selected fonts.
This allows whole-bitmap lookup instead of checking each bit. The
expectation is that usage of modifiers will tend to cluster, so
we will not have the full range of possible usages, hence a
tractable hash map.

This is set as buffer-local. It should probably be shared in a
given workspace/language-server combination.

This cache should be flushed every time any modifier
configuration changes.") (autoload 'lsp--semantic-tokens-initialize-buffer "lsp-semantic-tokens" "Initialize the buffer for semantic tokens.
IS-RANGE-PROVIDER is non-nil when server supports range requests.") (autoload 'lsp--semantic-tokens-initialize-workspace "lsp-semantic-tokens" "Initialize semantic tokens for WORKSPACE.

(fn WORKSPACE)") (autoload 'lsp-semantic-tokens--warn-about-deprecated-setting "lsp-semantic-tokens" "Warn about deprecated semantic highlighting variable.") (autoload 'lsp-semantic-tokens--enable "lsp-semantic-tokens" "Enable semantic tokens mode.") (autoload 'lsp-semantic-tokens-mode "lsp-semantic-tokens" "Toggle semantic-tokens support.

This is a minor mode.  If called interactively, toggle the
`Lsp-Semantic-Tokens mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `lsp-semantic-tokens-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "lsp-semantic-tokens" '("lsp-")) (register-definition-prefixes "lsp-semgrep" '("lsp-semgrep-" "semgrep-")) (register-definition-prefixes "lsp-sml" '("lsp-sml-millet-")) (register-definition-prefixes "lsp-solargraph" '("lsp-solargraph-")) (register-definition-prefixes "lsp-sorbet" '("lsp-sorbet-")) (register-definition-prefixes "lsp-sqls" '("lsp-sql")) (register-definition-prefixes "lsp-steep" '("lsp-steep-")) (register-definition-prefixes "lsp-svelte" '("lsp-svelte-plugin-")) (register-definition-prefixes "lsp-terraform" '("construct-tf-package" "lsp-t")) (register-definition-prefixes "lsp-tex" '("lsp-")) (register-definition-prefixes "lsp-toml" '("lsp-toml-")) (register-definition-prefixes "lsp-ttcn3" '("lsp-ttcn3-lsp-server-command")) (register-definition-prefixes "lsp-typeprof" '("lsp-typeprof-")) (register-definition-prefixes "lsp-v" '("lsp-v-vls-executable")) (register-definition-prefixes "lsp-vala" '("lsp-clients-vala-ls-executable")) (register-definition-prefixes "lsp-verilog" '("lsp-clients-")) (register-definition-prefixes "lsp-vetur" '("lsp-vetur-")) (register-definition-prefixes "lsp-vhdl" '("ghdl-ls-bin-name" "hdl-checker-bin-name" "lsp-vhdl-" "vhdl-")) (register-definition-prefixes "lsp-vimscript" '("lsp-clients-vim-")) (register-definition-prefixes "lsp-volar" '("lsp-volar-")) (register-definition-prefixes "lsp-xml" '("lsp-xml-")) (register-definition-prefixes "lsp-yaml" '("lsp-yaml-")) (register-definition-prefixes "lsp-zig" '("lsp-zig-zls-executable")) (provide 'lsp-mode-autoloads)) "openwith" ((openwith-autoloads openwith) (defvar openwith-mode nil "Non-nil if Openwith mode is enabled.
See the `openwith-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `openwith-mode'.") (custom-autoload 'openwith-mode "openwith" nil) (autoload 'openwith-mode "openwith" "Automatically open files with external programs.

This is a global minor mode.  If called interactively, toggle the
`Openwith mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='openwith-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t) (register-definition-prefixes "openwith" '("openwith-")) (provide 'openwith-autoloads)) "vscode-dark-plus-theme" ((vscode-dark-plus-theme-autoloads vscode-dark-plus-theme) (when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (register-definition-prefixes "vscode-dark-plus-theme" '("vscode-dark-plus-")) (provide 'vscode-dark-plus-theme-autoloads))))

#s(hash-table size 65 test eq rehash-size 1.5 rehash-threshold 0.8125 data (org-elpa #s(hash-table size 97 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 15 "melpa" nil "gnu-elpa-mirror" nil "nongnu-elpa" nil "el-get" nil "emacsmirror-mirror" nil "straight" nil "use-package" nil "bind-key" nil "org" (org :type git :repo "https://git.savannah.gnu.org/git/emacs/org-mode.git" :local-repo "org" :depth full :pre-build (straight-recipes-org-elpa--build) :build (:not autoloads) :files (:defaults "lisp/*.el" ("etc/styles/" "etc/styles/*"))) "evil" nil "goto-chg" nil "cl-lib" nil "evil-org" nil "org-pomodoro" nil "alert" nil "gntp" nil "log4e" nil "undo-tree" nil "queue" nil "eyebrowse" nil "dash" nil "evil-leader" nil "which-key" nil "yasnippet" nil "visual-fill-column" nil "company" nil "vertico" nil "compat" nil "seq" nil "marginalia" nil "orderless" nil "consult" nil "leuven-theme" nil "ef-themes" nil "dracula-theme" nil "parchment-theme" nil "autothemer" nil "cloud-theme" nil "moe-theme" nil "zenburn-theme" nil "monokai-theme" nil "gruvbox-theme" nil "ample-theme" nil "ample-zen-theme" nil "alect-themes" nil "tao-theme" nil "poet-theme" nil "modus-themes" nil "faff-theme" nil "color-theme-modern" nil "solarized-theme" nil "beacon" nil "doom-modeline" nil "nerd-icons" nil "shrink-path" nil "s" nil "f" nil "org-superstar" nil "ivy-bibtex" nil "bibtex-completion" nil "parsebib" nil "biblio" nil "biblio-core" nil "let-alist" nil "ivy" nil "org-ref" nil "htmlize" nil "hydra" nil "lv" nil "avy" nil "citeproc" nil "string-inflection" nil "ox-pandoc" nil "ht" nil "org-roam" nil "emacsql" nil "magit-section" nil "org-roam-bibtex" nil "deft" nil "mw-thesaurus" nil "request" nil "flyspell-correct-ivy" nil "flyspell-correct" nil "academic-phrases" nil "smartparens" nil "olivetti" nil "pyvenv" nil "lsp-mode" nil "spinner" nil "markdown-mode" nil "eldoc" nil "openwith" nil "vscode-dark-plus-theme" nil)) melpa #s(hash-table size 97 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "gnu-elpa-mirror" nil "nongnu-elpa" nil "el-get" (el-get :type git :flavor melpa :files ("*.el" ("recipes" "recipes/el-get.rcp") "methods" "el-get-pkg.el") :host github :repo "dimitri/el-get") "emacsmirror-mirror" nil "straight" nil "use-package" (use-package :type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package") "bind-key" (bind-key :type git :flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :host github :repo "jwiegley/use-package") "evil" (evil :type git :flavor melpa :files (:defaults "doc/build/texinfo/evil.texi" (:exclude "evil-test-helpers.el") "evil-pkg.el") :host github :repo "emacs-evil/evil") "goto-chg" (goto-chg :type git :flavor melpa :host github :repo "emacs-evil/goto-chg") "cl-lib" nil "evil-org" (evil-org :type git :flavor melpa :host github :repo "Somelauw/evil-org-mode") "org-pomodoro" (org-pomodoro :type git :flavor melpa :files (:defaults "resources" "org-pomodoro-pkg.el") :host github :repo "marcinkoziej/org-pomodoro") "alert" (alert :type git :flavor melpa :host github :repo "jwiegley/alert") "gntp" (gntp :type git :flavor melpa :host github :repo "tekai/gntp.el") "log4e" (log4e :type git :flavor melpa :host github :repo "aki2o/log4e") "undo-tree" nil "queue" nil "eyebrowse" (eyebrowse :type git :flavor melpa :repo "https://depp.brause.cc/eyebrowse.git") "dash" (dash :type git :flavor melpa :files ("dash.el" "dash.texi" "dash-pkg.el") :host github :repo "magnars/dash.el") "evil-leader" (evil-leader :type git :flavor melpa :host github :repo "cofi/evil-leader") "which-key" (which-key :type git :flavor melpa :host github :repo "justbur/emacs-which-key") "yasnippet" (yasnippet :type git :flavor melpa :files ("yasnippet.el" "snippets" "yasnippet-pkg.el") :host github :repo "joaotavora/yasnippet") "visual-fill-column" (visual-fill-column :type git :flavor melpa :host codeberg :repo "joostkremers/visual-fill-column") "company" (company :type git :flavor melpa :files (:defaults "icons" ("images/small" "doc/images/small/*.png") "company-pkg.el") :host github :repo "company-mode/company-mode") "vertico" nil "compat" nil "seq" nil "marginalia" (marginalia :type git :flavor melpa :host github :repo "minad/marginalia") "orderless" (orderless :type git :flavor melpa :host github :repo "oantolin/orderless") "consult" (consult :type git :flavor melpa :host github :repo "minad/consult") "leuven-theme" (leuven-theme :type git :flavor melpa :host github :repo "fniessen/emacs-leuven-theme") "ef-themes" nil "dracula-theme" (dracula-theme :type git :flavor melpa :host github :repo "dracula/emacs") "parchment-theme" (parchment-theme :type git :flavor melpa :host gitlab :repo "ajgrf/parchment") "autothemer" (autothemer :type git :flavor melpa :host github :repo "jasonm23/autothemer") "cloud-theme" (cloud-theme :type git :flavor melpa :host github :repo "vallyscode/cloud-theme") "moe-theme" (moe-theme :type git :flavor melpa :host github :repo "kuanyui/moe-theme.el") "zenburn-theme" (zenburn-theme :type git :flavor melpa :host github :repo "bbatsov/zenburn-emacs") "monokai-theme" (monokai-theme :type git :flavor melpa :host github :repo "oneKelvinSmith/monokai-emacs") "gruvbox-theme" (gruvbox-theme :type git :flavor melpa :host github :repo "greduan/emacs-theme-gruvbox") "ample-theme" (ample-theme :type git :flavor melpa :host github :repo "jordonbiondo/ample-theme") "ample-zen-theme" (ample-zen-theme :type git :flavor melpa :host github :repo "mjwall/ample-zen") "alect-themes" (alect-themes :type git :flavor melpa :host github :repo "alezost/alect-themes") "tao-theme" (tao-theme :type git :flavor melpa :host github :repo "11111000000/tao-theme-emacs") "poet-theme" (poet-theme :type git :flavor melpa :host github :repo "kunalb/poet") "modus-themes" (modus-themes :type git :flavor melpa :host sourcehut :repo "protesilaos/modus-themes") "faff-theme" (faff-theme :type git :flavor melpa :host github :repo "WJCFerguson/emacs-faff-theme") "color-theme-modern" (color-theme-modern :type git :flavor melpa :host github :repo "emacs-jp/replace-colorthemes") "solarized-theme" (solarized-theme :type git :flavor melpa :host github :repo "bbatsov/solarized-emacs") "beacon" (beacon :type git :flavor melpa :host github :repo "Malabarba/beacon") "doom-modeline" (doom-modeline :type git :flavor melpa :host github :repo "seagle0128/doom-modeline") "nerd-icons" (nerd-icons :type git :flavor melpa :files (:defaults "data" "nerd-icons-pkg.el") :host github :repo "rainstormstudio/nerd-icons.el") "shrink-path" (shrink-path :type git :flavor melpa :host gitlab :repo "bennya/shrink-path.el") "s" (s :type git :flavor melpa :host github :repo "magnars/s.el") "f" (f :type git :flavor melpa :host github :repo "rejeep/f.el") "org-superstar" (org-superstar :type git :flavor melpa :host github :repo "integral-dw/org-superstar-mode") "ivy-bibtex" (ivy-bibtex :type git :flavor melpa :files ("ivy-bibtex.el" "ivy-bibtex-pkg.el") :host github :repo "tmalsburg/helm-bibtex") "bibtex-completion" (bibtex-completion :type git :flavor melpa :files ("bibtex-completion.el" "bibtex-completion-pkg.el") :host github :repo "tmalsburg/helm-bibtex") "parsebib" (parsebib :type git :flavor melpa :host github :repo "joostkremers/parsebib") "biblio" (biblio :type git :flavor melpa :files (:defaults (:exclude "biblio-core.el") "biblio-pkg.el") :host github :repo "cpitclaudel/biblio.el") "biblio-core" (biblio-core :type git :flavor melpa :files ("biblio-core.el" "biblio-core-pkg.el") :host github :repo "cpitclaudel/biblio.el") "let-alist" nil "ivy" (ivy :type git :flavor melpa :files (:defaults "doc/ivy-help.org" (:exclude "swiper.el" "counsel.el" "ivy-hydra.el" "ivy-avy.el") "ivy-pkg.el") :host github :repo "abo-abo/swiper") "org-ref" (org-ref :type git :flavor melpa :files (:defaults "org-ref.org" "org-ref.bib" "citeproc" "org-ref-pkg.el") :host github :repo "jkitchin/org-ref") "htmlize" (htmlize :type git :flavor melpa :host github :repo "hniksic/emacs-htmlize") "hydra" (hydra :type git :flavor melpa :files (:defaults (:exclude "lv.el") "hydra-pkg.el") :host github :repo "abo-abo/hydra") "lv" (lv :type git :flavor melpa :files ("lv.el" "lv-pkg.el") :host github :repo "abo-abo/hydra") "avy" (avy :type git :flavor melpa :host github :repo "abo-abo/avy") "citeproc" (citeproc :type git :flavor melpa :host github :repo "andras-simonyi/citeproc-el") "string-inflection" (string-inflection :type git :flavor melpa :host github :repo "akicho8/string-inflection") "ox-pandoc" (ox-pandoc :type git :flavor melpa :host github :repo "emacsorphanage/ox-pandoc") "ht" (ht :type git :flavor melpa :host github :repo "Wilfred/ht.el") "org-roam" (org-roam :type git :flavor melpa :files (:defaults "extensions/*" "org-roam-pkg.el") :host github :repo "org-roam/org-roam") "emacsql" (emacsql :type git :flavor melpa :files (:defaults "sqlite" "emacsql-pkg.el") :host github :repo "magit/emacsql") "magit-section" (magit-section :type git :flavor melpa :files ("lisp/magit-section.el" "lisp/magit-section-pkg.el" "docs/magit-section.texi" "Documentation/magit-section.texi" "magit-section-pkg.el") :host github :repo "magit/magit") "org-roam-bibtex" (org-roam-bibtex :type git :flavor melpa :host github :repo "org-roam/org-roam-bibtex") "deft" (deft :type git :flavor melpa :host github :repo "jrblevin/deft") "mw-thesaurus" (mw-thesaurus :type git :flavor melpa :host github :repo "agzam/mw-thesaurus.el") "request" (request :type git :flavor melpa :files ("request.el" "request-pkg.el") :host github :repo "tkf/emacs-request") "flyspell-correct-ivy" (flyspell-correct-ivy :type git :flavor melpa :files ("flyspell-correct-ivy.el" "flyspell-correct-ivy-pkg.el") :host github :repo "d12frosted/flyspell-correct") "flyspell-correct" (flyspell-correct :type git :flavor melpa :files ("flyspell-correct.el" "flyspell-correct-ido.el" "flyspell-correct-pkg.el") :host github :repo "d12frosted/flyspell-correct") "academic-phrases" (academic-phrases :type git :flavor melpa :host github :repo "nashamri/academic-phrases") "smartparens" (smartparens :type git :flavor melpa :host github :repo "Fuco1/smartparens") "olivetti" (olivetti :type git :flavor melpa :host github :repo "rnkn/olivetti") "pyvenv" (pyvenv :type git :flavor melpa :host github :repo "jorgenschaefer/pyvenv") "lsp-mode" (lsp-mode :type git :flavor melpa :files (:defaults "clients/*.el" "lsp-mode-pkg.el") :host github :repo "emacs-lsp/lsp-mode") "spinner" nil "markdown-mode" (markdown-mode :type git :flavor melpa :host github :repo "jrblevin/markdown-mode") "eldoc" nil "openwith" (openwith :type git :flavor melpa :host github :repo "jpkotta/openwith") "vscode-dark-plus-theme" (vscode-dark-plus-theme :type git :flavor melpa :host github :repo "ianyepan/vscode-dark-plus-emacs-theme"))) gnu-elpa-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 3 "nongnu-elpa" nil "emacsmirror-mirror" nil "straight" nil "cl-lib" nil "undo-tree" (undo-tree :type git :host github :repo "emacs-straight/undo-tree" :files ("*" (:exclude ".git"))) "queue" (queue :type git :host github :repo "emacs-straight/queue" :files ("*" (:exclude ".git"))) "vertico" (vertico :type git :host github :repo "emacs-straight/vertico" :files ("*" (:exclude ".git"))) "compat" (compat :type git :host github :repo "emacs-straight/compat" :files ("*" (:exclude ".git"))) "seq" nil "ef-themes" (ef-themes :type git :host github :repo "emacs-straight/ef-themes" :files ("*" (:exclude ".git"))) "let-alist" (let-alist :type git :host github :repo "emacs-straight/let-alist" :files ("*" (:exclude ".git"))) "spinner" (spinner :type git :host github :repo "emacs-straight/spinner" :files ("*" (:exclude ".git"))) "eldoc" (eldoc :type git :host github :repo "emacs-straight/eldoc" :files ("*" (:exclude ".git"))))) nongnu-elpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 4 "emacsmirror-mirror" nil "straight" nil "cl-lib" nil "seq" nil)) el-get #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "emacsmirror-mirror" nil "straight" nil "cl-lib" nil "seq" nil)) emacsmirror-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "straight" (straight :type git :host github :repo "emacsmirror/straight") "cl-lib" nil "seq" nil))))

("vscode-dark-plus-theme" "openwith" "eldoc" "markdown-mode" "spinner" "lsp-mode" "pyvenv" "olivetti" "smartparens" "academic-phrases" "flyspell-correct" "flyspell-correct-ivy" "request" "mw-thesaurus" "deft" "org-roam-bibtex" "magit-section" "emacsql" "org-roam" "ht" "ox-pandoc" "string-inflection" "citeproc" "avy" "lv" "hydra" "htmlize" "org-ref" "ivy" "let-alist" "biblio-core" "biblio" "parsebib" "bibtex-completion" "ivy-bibtex" "org-superstar" "f" "s" "shrink-path" "nerd-icons" "doom-modeline" "beacon" "solarized-theme" "color-theme-modern" "faff-theme" "modus-themes" "poet-theme" "tao-theme" "alect-themes" "ample-zen-theme" "ample-theme" "gruvbox-theme" "monokai-theme" "zenburn-theme" "moe-theme" "cloud-theme" "autothemer" "parchment-theme" "dracula-theme" "ef-themes" "leuven-theme" "consult" "orderless" "marginalia" "seq" "compat" "vertico" "company" "visual-fill-column" "yasnippet" "which-key" "evil-leader" "dash" "eyebrowse" "queue" "undo-tree" "log4e" "gntp" "alert" "org-pomodoro" "evil-org" "cl-lib" "goto-chg" "evil" "org" "bind-key" "use-package" "emacs" "straight" "emacsmirror-mirror" "el-get" "nongnu-elpa" "gnu-elpa-mirror" "melpa" "org-elpa")

t
