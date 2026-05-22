# macOS Setup

## Recommended Packages

Install Homebrew, then:

```sh
brew install emacs git ripgrep python make aspell
```

For LaTeX/PDF authoring, install MacTeX or BasicTeX:

```sh
brew install --cask mactex
```

## Paths

The config adds common Homebrew paths such as `/opt/homebrew/bin` and `/usr/local/bin` when they exist.

Example `~/.emacs.d/local.el`:

```elisp
(setq eid-preferred-python-executable "/opt/homebrew/bin/python3"
      eid-preferred-shell "/bin/zsh"
      eid-research-directory "~/Research/"
      eid-projects-directory "~/Projects/"
      eid-notes-directory "~/Research/notes/")
```

## GUI, Terminal, And Daemon Mode

The configuration avoids Linux-only shell assumptions and does not set `HOME`. It works in GUI Emacs, terminal Emacs, and daemon/client sessions.

For daemon use:

```sh
emacs --daemon
emacsclient -c
```

## AI Keys

Use environment variables in your shell profile or `~/.authinfo.gpg`. Do not store API keys in `local.el` unless the file is encrypted and ignored.

## Website Preview

If the website uses Hugo, Node, or another framework, keep using the website repo's own scripts. Set:

```elisp
(setq eid-website-preview-command '("make" "preview")
      eid-website-build-command '("make" "build"))
```
