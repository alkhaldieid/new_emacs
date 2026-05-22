# Linux Setup

## Recommended Packages

Debian/Ubuntu:

```sh
sudo apt-get update
sudo apt-get install -y emacs git ripgrep make python3 python3-venv aspell hunspell xdg-utils
```

Fedora:

```sh
sudo dnf install emacs git ripgrep make python3 aspell hunspell xdg-utils
```

For LaTeX/PDF authoring, install a TeX Live distribution:

```sh
sudo apt-get install -y texlive-full
```

## Paths

The config checks common Linux paths and uses `xdg-open` when available. It does not assume `/home/alkhaldieid`, Anaconda, `evince`, `sxiv`, `mpv`, i3, DWM, Kitty, or Ranger.

Example `~/.emacs.d/local.el`:

```elisp
(setq eid-preferred-python-executable "/usr/bin/python3"
      eid-preferred-shell "/bin/bash"
      eid-research-directory "~/Research/"
      eid-projects-directory "~/Projects/"
      eid-notes-directory "~/Research/notes/")
```

## Terminal And Daemon Mode

Terminal Emacs works normally:

```sh
emacs -nw
```

Daemon mode:

```sh
emacs --daemon
emacsclient -c
```

## Spellcheck

Install `aspell` or `hunspell`, then configure dictionaries locally if needed:

```elisp
(setq ispell-program-name "aspell")
```

## Signal Pipeline And Website

Clone the related repos wherever you prefer and set:

```elisp
(setq eid-signal-pipeline-directory "~/signal-pipeline/"
      eid-personal-website-directory "~/alkhaldieid.github.io/")
```
