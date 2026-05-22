# Installation

## Requirements

- Emacs 29 or newer recommended.
- Git.
- A POSIX shell available as `zsh`, `bash`, or `sh`.
- Optional but recommended: `ripgrep`, `make`, `python3`, `aspell` or `hunspell`, LaTeX tooling, and a local website checkout.

## Fresh Install

```sh
git clone https://github.com/alkhaldieid/new_emacs ~/.emacs.d
emacs
```

The first launch bootstraps `straight.el` and installs packages. This requires network access.

## Local Overrides

Create `~/.emacs.d/local.el` for private paths:

```elisp
(setq eid-research-directory "~/Research/"
      eid-notes-directory "~/Research/notes/"
      eid-bibliography-file "~/Research/bibliography/references.bib"
      eid-projects-directory "~/Projects/"
      eid-signal-pipeline-directory "~/signal-pipeline/"
      eid-personal-website-directory "~/alkhaldieid.github.io/")
```

Do not commit local config or credentials. The repo ignores `local.el`, `local.el.gpg`, `eid-local.el`, `.eid-local.el`, and common secret files.

## Private Submodule

This repo supports a private personal-config submodule at `private/`.

For Eid's private repo:

```sh
git submodule update --init --recursive
```

If creating it from a fresh local checkout, create the private GitHub repository first, then push:

```sh
git -C private remote add origin git@github.com:alkhaldieid/new_emacs_private.git
git -C private push -u origin main
```

Use the private submodule for personal paths, private snippets, and machine-specific shortcuts. The public config loads `private/init.el`, `private/personal.el`, and `private/personal.el.gpg` when present.

## Credentials

Prefer environment variables or encrypted auth-source files.

Environment:

```sh
export OPENAI_API_KEY=...
export ANTHROPIC_API_KEY=...
```

Auth-source:

```text
machine api.openai.com login apikey password OPENAI_KEY_HERE
machine api.anthropic.com login apikey password ANTHROPIC_KEY_HERE
```

Save that as `~/.authinfo.gpg` if possible.

## Validate

```sh
make ci
```

This byte-compiles the modular configuration and runs ERT tests.

## Platform Notes

- [macOS setup](docs/macos.md)
- [Linux setup](docs/linux.md)
