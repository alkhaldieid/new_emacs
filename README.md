# Eid Research Emacs

Vim-first Emacs for research writing, AI-assisted analysis, RSS intake, and signal-to-publication workflows on macOS and Linux.

This repo began as Eid Alkhaldi's personal PhD Emacs setup. It is now organized as a small cross-platform distribution that keeps Evil/Vim navigation central while making paths, credentials, RSS feeds, and publishing commands configurable for other researchers.

## What It Provides

- Evil/Vim-style editing with `<SPC>` as the leader key.
- Org writing, export, bibliography, notes, and project navigation defaults.
- AI workflows through `gptel` for OpenAI and Anthropic/Claude.
- RSS intake through `elfeed`, with research-note and signal-seed commands.
- Signal-pipeline review, LinkedIn draft, privacy review, and website publishing helpers.
- Tests and CI for macOS and Ubuntu.

## Installation

See [INSTALL.md](INSTALL.md) for full setup.

Quick start:

```sh
git clone https://github.com/alkhaldieid/new_emacs ~/.emacs.d
emacs
```

To try this profile on macOS without replacing an existing `~/.emacs.d`:

```sh
./bin/eid-emacs-macos
```

On first launch, `straight.el` installs packages. Put private machine settings in `~/.emacs.d/local.el`, `~/.emacs.d/local.el.gpg`, repo-local `.eid-local.el`, or the private `private/` submodule.

## Core Customization

All major paths are `defcustom`s in `lisp/eid-platform.el`:

- `eid-research-directory`
- `eid-bibliography-file`
- `eid-notes-directory`
- `eid-projects-directory`
- `eid-rss-directory`
- `eid-rss-database-file`
- `eid-rss-feeds-file`
- `eid-signal-pipeline-directory`
- `eid-personal-website-directory`
- `eid-preferred-python-executable`
- `eid-preferred-shell`

Example `~/.emacs.d/local.el`:

```elisp
(setq eid-research-directory "~/Research/"
      eid-notes-directory "~/Research/notes/"
      eid-bibliography-file "~/Research/bibliography/references.bib"
      eid-projects-directory "~/Projects/"
      eid-signal-pipeline-directory "~/signal-pipeline/"
      eid-personal-website-directory "~/alkhaldieid.github.io/"
      eid-preferred-python-executable "/opt/homebrew/bin/python3")
```

## Private Submodule

Personal configs belong in the private submodule mounted at `private/`.

The public repo is configured for:

```text
git@github.com:alkhaldieid/new_emacs_private.git
```

After creating that private GitHub repository, push the local private submodule:

```sh
git -C private remote add origin git@github.com:alkhaldieid/new_emacs_private.git
git -C private push -u origin main
```

Fresh clones can initialize it with:

```sh
git submodule update --init --recursive
```

The public config automatically loads these private files when present:

- `private/init.el`
- `private/personal.el`
- `private/personal.el.gpg`

Private snippets live in `private/snippets/`.

## AI Setup

AI support uses `gptel` and never hardcodes API keys.

Credentials can come from environment variables:

```sh
export OPENAI_API_KEY=...
export ANTHROPIC_API_KEY=...
```

Or from `auth-source`, for example `~/.authinfo.gpg`:

```text
machine api.openai.com login apikey password OPENAI_KEY_HERE
machine api.anthropic.com login apikey password ANTHROPIC_KEY_HERE
```

Configurable AI variables live in `lisp/eid-ai.el`:

- `eid-ai-default-provider`
- `eid-ai-openai-model`
- `eid-ai-anthropic-model`
- `eid-ai-temperature`
- `eid-ai-max-tokens`
- `eid-ai-system-prompt`
- `eid-ai-prompt-directory`

Prompt templates live in [prompts](prompts/), including research review, LinkedIn refinement, website article drafting, privacy review, evidence extraction, research memo, and Arabic style review.

## RSS Setup

RSS support uses `elfeed`. Defaults include public examples for AI research, academic papers, retrieval/RAG, LLM agents, insurance, Saudi/Gulf technology, and regulation/compliance.

Customize feeds in `~/.emacs.d/local.el`:

```elisp
(setq eid-rss-user-feeds
      '(("https://example.com/feed.xml" ai-research rag)
        ("https://example.org/regulation/rss" regulation-compliance)))
```

Or put feed config in `eid-rss-feeds-file`, which defaults to `~/.emacs.d/elfeed/feeds.el`.

RSS commands can save items into notes, create signal-pipeline seed notes, summarize an item with AI after confirmation, or draft commentary notes.

## Signal Pipeline To Website

Set:

```elisp
(setq eid-signal-pipeline-directory "~/signal-pipeline/"
      eid-personal-website-directory "~/alkhaldieid.github.io/"
      eid-website-build-command '("make" "build")
      eid-website-preview-command '("make" "preview"))
```

The website remote defaults to:

```text
git@github.com:alkhaldieid/alkhaldieid.github.io.git
```

Workflow:

1. Run `M-x eid/signal-run`.
2. Watch `*signal-pipeline-progress*` or reopen it with `M-x eid/signal-progress`.
3. Open the raw process log with `M-x eid/signal-show-log`.
4. Open the newest generated post with `M-x eid/signal-open-latest-post`.
5. Draft for LinkedIn with `M-x eid/signal-draft-linkedin-post`.
6. Refine or review with AI.
7. Publish to the website with `M-x eid/signal-publish-to-website`.
8. Preview locally with `M-x eid/signal-preview-website`.
9. Commit after reviewing the diff with `M-x eid/signal-commit-website`.

Publishing never pushes automatically. LinkedIn support creates drafts and clipboard exports only.

## Leader Keys

The leader key is `<SPC>` in Evil normal/visual states. A fallback prefix, `C-c SPC`, is available without Evil.

| Key | Command |
| --- | --- |
| `<leader> a c` | AI chat |
| `<leader> a r` | Rewrite region/subtree/buffer |
| `<leader> a s` | Summarize |
| `<leader> a o` | Generate outline |
| `<leader> a e` | Extract evidence-needed claims |
| `<leader> a p` | Privacy review |
| `<leader> a l` | LinkedIn draft |
| `<leader> a w` | Website article draft |
| `<leader> a A` | Arabic style review |
| `<leader> a m` | Switch provider/model |
| `<leader> r r` | Open RSS |
| `<leader> r u` | Update feeds |
| `<leader> r s` | Search feeds |
| `<leader> r n` | Save RSS item to notes |
| `<leader> r g` | Generate signal seed |
| `<leader> r a` | AI summarize RSS item |
| `<leader> w h/j/k/l` | Move to left/down/up/right window |
| `<leader> w H/L` | Move current window far left/right |
| `<leader> w s` | Split window horizontally |
| `<leader> w v` | Split window vertically |
| `<leader> w d` | Delete window |
| `<leader> w m` | Maximize current window |
| `<leader> w =/-` | Increase/decrease window width |
| `<leader> 1..9` | Switch eyebrowse workspace |
| `<leader> s r` | Run signal-pipeline |
| `<leader> s s` | Show signal-pipeline progress |
| `<leader> s o` | Show signal-pipeline log |
| `<leader> s X` | Stop running signal-pipeline |
| `<leader> s l` | Open latest post |
| `<leader> s d` | Draft LinkedIn post |
| `<leader> s a` | Refine draft with AI |
| `<leader> s p` | Publication/privacy review |
| `<leader> s w` | Publish to website |
| `<leader> s v` | Preview website |
| `<leader> s c` | Commit website changes |
| `<leader> n n` | Open notes |
| `<leader> b b` | Open bibliography |
| `<leader> p p` | Switch project |
| `<leader> g s` | Magit status |
| `<leader> e e` | Org export dispatch |
| `<leader> t t` | Run tests |

Dispatch commands:

- `M-x eid-ai-dispatch`
- `M-x eid-rss-dispatch`
- `M-x eid-signal-dispatch`

LinkedIn generation notes:

- Select only the rough ideas you want to turn into a post, then press `<leader> a l`.
- The generated post appears in `*eid-ai-LinkedIn Draft*`.
- The exact prompt sent to the model is saved in `*eid-ai-prompt-LinkedIn Draft*`.
- The command should start with a complete post, then show hooks, evidence gaps, publication risks, and hashtags.

## Validation

Run:

```sh
make compile
make test
make ci
```

CI runs byte compilation and ERT tests on Ubuntu and macOS.

## Legacy Files

`README.org` is preserved as historical/literate reference material. The old public `personal.org` was moved into the private submodule as `private/legacy-personal.org`. To temporarily load the legacy literate README:

```elisp
(setq eid-load-legacy-literate-config t)
```

Prefer moving reusable settings into `lisp/` modules or local ignored config files.
