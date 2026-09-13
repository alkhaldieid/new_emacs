# Handover for Claude

This repository is Eid Alkhaldi's Emacs configuration, currently being turned
from a personal Linux-focused setup into a polished, cross-platform,
AI-enabled research environment for macOS and Linux.

The user wants Claude to act as a senior Emacs Lisp engineer, research-workflow
designer, and AI tooling architect. Preserve the spirit of the original setup:
Vim-style navigation is not incidental; it is a first-class design principle.

## Current User Goals

- Make this Emacs setup work cleanly on macOS and Linux.
- Keep Evil/Vim-like navigation and leader-key workflows.
- Make major workflows reachable through mnemonic `SPC` leader bindings.
- Avoid random keybinding sprawl.
- Support researchers, PhD students, technical writers, and public-writing
  workflows.
- Support AI-assisted research and writing through OpenAI and Claude/Anthropic.
- Keep secrets and private machine assumptions out of the public repo.
- Keep Eid's personal defaults convenient, but make everything overrideable.
- Use a private config submodule for personal paths, RSS exports, and local
  preferences.
- Let Eid run `signal-pipeline`, review posts, refine them with AI, create
  LinkedIn drafts, and publish accepted website articles from Emacs.
- Make the setup feel like a credible research operating environment, not a
  dotfiles dump.

## Repository State

Root path on Eid's Mac:

```text
/Users/eidalkhaldi/Documents/Codex/2026-05-22/you-are-a-senior-emacs-lisp
```

Public GitHub repo:

```text
git@github.com:alkhaldieid/new_emacs.git
```

Private submodule:

```text
private/ -> git@github.com:alkhaldieid/new_emacs_private.git
```

Important status as of this handover:

- `origin/main` has commit `3c4e323 Build cross-platform research Emacs distribution`.
- The private submodule has been created and pushed.
- The private submodule contains:
  - `private/README.md`
  - `private/init.el`
  - `private/legacy-personal.org`
  - `private/rss/Inoreader Feeds 20260510.xml`
  - `.ihsec` bridge context for switching between Emacs configurations.
- There are uncommitted local public-repo changes after the pushed commit.
  These include macOS polish, theme setup, AI fixes, LinkedIn prompt fixes,
  signal progress UI, and restored Vim workspace/window navigation.

Run this before making decisions:

```sh
git status --short --branch
git diff --stat
git submodule status
```

Do not assume local changes are already on GitHub.

## Current Architecture

The supported entry point is `init.el`. The old `README.org` remains as a
historical reference.

Main modules:

- `lisp/eid-platform.el`
  - Cross-platform path helpers and customization variables.
  - Defines research paths, bibliography path, notes path, projects path, RSS
    paths, signal-pipeline path, website repo path, preferred shell, and Python
    executable.
- `lisp/eid-private.el`
  - Loads local/private configuration safely.
  - Configures snippets and user-local private overrides.
- `lisp/eid-ui.el`
  - New local change. Theme/modeline/frame polish.
  - Default theme is `doom-tokyo-night`.
- `lisp/eid-leader.el`
  - Vim-style leader-key architecture using `evil-leader`.
  - Provides fallback bindings under `C-c SPC`.
  - Restores old-style window/workspace navigation.
- `lisp/eid-research.el`
  - Org, bibliography, notes, citation, export, and research workflow defaults.
- `lisp/eid-ai.el`
  - AI abstraction built on `gptel`.
  - Supports OpenAI and Anthropic/Claude.
  - Reads credentials from env vars or `auth-source`, never from git.
- `lisp/eid-rss.el`
  - RSS/research intake workflow based on Elfeed.
- `lisp/eid-signal.el`
  - Async `signal-pipeline` runner, progress dashboard, review buffers, AI
    refinement, website publishing helpers, preview, and commit workflow.

Docs and support files:

- `README.md`
- `INSTALL.md`
- `docs/macos.md`
- `docs/linux.md`
- `Makefile`
- `.github/workflows/ci.yml`
- `tests/test-eid-platform.el`
- `tests/test-eid-signal.el`
- `prompts/*.md`
- `bin/eid-emacs-macos`

## macOS Setup Context

Eid asked to run this on macOS. The intended setup is:

```text
~/.emacs.d -> /Users/eidalkhaldi/Documents/Codex/2026-05-22/you-are-a-senior-emacs-lisp
```

The previous `~/.emacs.d` was moved to a backup folder during setup. Check the
home directory if the exact backup path is needed.

`ihsec` / `.ihsec` is part of Eid's workflow for switching between different
Emacs configurations. Do not remove this bridge or assume only one Emacs config
exists on the machine.

## Pushed vs Local Changes

Already pushed:

- Cross-platform modular Emacs distribution baseline.
- Private submodule creation.
- Private RSS export copied from:

```text
/Users/eidalkhaldi/Downloads/Inoreader Feeds 20260510.xml
```

Still local at the time this handover was written:

- `README.md`
- `docs/macos.md`
- `init.el`
- `lisp/eid-ai.el`
- `lisp/eid-leader.el`
- `lisp/eid-private.el`
- `lisp/eid-research.el`
- `lisp/eid-signal.el`
- `prompts/linkedin-refine.md`
- `bin/eid-emacs-macos`
- `lisp/eid-ui.el`

There may also be a generated `projectile-bookmarks.eld`. Do not commit it
unless intentionally wanted.

Before pushing, review with:

```sh
git diff
make ci
```

Then commit and push only intentional files.

## AI Workflow

AI is implemented using `gptel`, not a custom fragile API client.

Credential sources:

- `OPENAI_API_KEY`
- `ANTHROPIC_API_KEY`
- `auth-source` entries for:
  - `api.openai.com`
  - `api.anthropic.com`

Never hardcode API keys.

Important user expectation:

- When Eid writes ideas in a buffer and invokes the LinkedIn command, the output
  should be a complete LinkedIn post draft, not just a privacy checklist or
  generic advice.
- `SPC a l` should use the selected region, current Org subtree, or whole
  buffer, combine it with the Markdown prompt template, and generate the post.
- The exact prompt sent to the model should be visible in a debug buffer such as
  `*eid-ai-prompt-LinkedIn Draft*`.
- The output should appear in `*eid-ai-LinkedIn Draft*`.

Important files:

- `lisp/eid-ai.el`
- `prompts/linkedin-refine.md`
- `prompts/privacy-check.md`
- `prompts/website-article.md`
- `prompts/arabic-style-review.md`

Leader AI bindings:

- `SPC a c` AI chat
- `SPC a r` rewrite
- `SPC a s` summarize
- `SPC a o` outline
- `SPC a e` evidence-needed claims
- `SPC a p` privacy review
- `SPC a l` LinkedIn draft
- `SPC a w` website article draft
- `SPC a A` Arabic style review
- `SPC a m` switch provider/model

Claude support exists through the Anthropic backend. If asked whether the setup
can use Claude for LinkedIn post generation, the answer should be yes, assuming
`ANTHROPIC_API_KEY` or `auth-source` is configured and `eid-ai-default-provider`
is set to `anthropic`.

## LinkedIn Prompt Problem

Eid previously tested a LinkedIn generation prompt about Saudi German Hospital,
CMA fines, external auditors, and AI for GRC. The output was bad because it
returned mostly a safety/privacy checklist and hashtags instead of writing the
actual post.

The likely causes:

- The prompt over-weighted guardrails and under-specified the desired output
  format.
- The command did not make it obvious what text was sent to the model.
- The selected-region behavior may have been unclear or not firing.
- The model may have lacked enough sourced facts if the prompt asked for recent
  public information without an explicit browsing/research step.

Current direction:

- Keep guardrails, but make them a final self-check, not the main output.
- Force the prompt to produce a complete LinkedIn post first.
- Add prompt-debug buffers.
- For current events or fact-heavy posts, require source gathering separately
  or explicitly tell the user that Emacs AI commands do not browse by default.

## RSS Workflow

RSS is based on Elfeed.

Important files:

- `lisp/eid-rss.el`
- `private/rss/Inoreader Feeds 20260510.xml`

Default public feed categories include:

- AI research
- insurance
- Saudi / Gulf technology
- LLM agents
- RAG and retrieval
- academic papers
- regulation / compliance

Leader RSS bindings:

- `SPC r r` open RSS
- `SPC r u` update feeds
- `SPC r s` search feeds
- `SPC r n` save item to notes
- `SPC r g` generate signal seed
- `SPC r a` AI summarize item

Do not hardcode Eid's private feeds into public defaults. Use local/private
override files for private feed lists.

## Signal Pipeline Workflow

Eid wants visible progress somewhere when running the signal pipeline.

Important files:

- `lisp/eid-signal.el`
- `prompts/linkedin-refine.md`
- `prompts/website-article.md`
- `prompts/privacy-check.md`

The signal runner should:

- Use `make-process` / async process handling.
- Never freeze Emacs.
- Log to `*signal-pipeline*`.
- Show progress in `*signal-pipeline-progress*`.
- Add status to the mode line.
- Never publish or push automatically without explicit confirmation.

Leader signal bindings:

- `SPC s r` run signal-pipeline
- `SPC s l` open latest post
- `SPC s d` draft LinkedIn post
- `SPC s a` refine draft with AI
- `SPC s p` privacy/publication review
- `SPC s w` publish to website
- `SPC s v` preview website
- `SPC s c` commit website changes
- `SPC s s` show progress
- `SPC s o` show log
- `SPC s X` stop running process

Website repo default:

```text
~/alkhaldieid.github.io/
git@github.com:alkhaldieid/alkhaldieid.github.io.git
```

Publishing should use the website repo's own build/preview scripts, not ad hoc
shell hacks.

## Vim Navigation Expectations

The user noticed the original window/workspace navigation was missing. This is
important.

Current intended navigation:

- `SPC w h/j/k/l` move between windows.
- `SPC w H/L` move current window far left/right.
- `SPC w s` horizontal split.
- `SPC w v` vertical split.
- `SPC w d` delete window.
- `SPC w m` maximize current window.
- `SPC w =` increase width.
- `SPC w -` decrease width.
- `SPC 1..9` switch `eyebrowse` workspaces.
- `C-w j/k/l/;` switch workspaces 1/2/3/4.

Do not replace these with vanilla Emacs navigation.

## Validation Commands

Preferred validation:

```sh
make ci
```

Useful startup checks:

```sh
emacs --batch -l init.el --eval '(message "startup ok")'
emacs --batch -l init.el --eval '(progn (eid-ai--ensure-gptel) (message "gptel=%s" (featurep (quote gptel))))'
```

If packages are missing, Straight may need network access to download/build
them. In restricted environments, request network approval rather than hiding
the failure.

Known harmless warning:

```text
evil-leader.el: Warning: Use keywords rather than deprecated positional arguments to define-minor-mode
```

This warning comes from upstream `evil-leader`.

## Coding Rules for Future Work

- Preserve existing user changes; do not reset or revert without explicit user
  approval.
- Keep the public repo free of secrets and private paths.
- Put user-specific paths, feeds, and private preferences in ignored local files
  or the private submodule.
- Use `system-type`, `executable-find`, and helper functions from
  `eid-platform.el` instead of hardcoded platform assumptions.
- Keep modules small and focused.
- Prefer mature packages (`gptel`, `elfeed`, `magit`, `projectile`,
  `org-roam`, `citar`) over fragile custom integrations.
- Every major workflow should have:
  - an `M-x` command,
  - a leader binding,
  - and, where useful, a dispatch command.
- Avoid new global keybindings unless they fit the leader architecture.

## Suggested Next Steps

1. Review the uncommitted changes.
2. Exclude generated files such as `projectile-bookmarks.eld` unless wanted.
3. Run `make ci`.
4. Commit the macOS/AI/theme/navigation/signal progress polish.
5. Push the public repo.
6. Test Emacs.app on macOS interactively:
   - theme loads,
   - `SPC` leader works,
   - `SPC a l` creates a full LinkedIn draft,
   - `SPC s r` shows progress,
   - `SPC w h/j/k/l` and `SPC 1..9` work.

