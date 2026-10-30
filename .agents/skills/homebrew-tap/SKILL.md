---
name: homebrew-tap
description: Manage Jeff McFadden's personal Homebrew tap, including adding the current project, updating formulae or casks, and checking stable upstream releases when requested from any project directory.
---

The canonical local tap is `/Users/jeffmcfadden/code/jeffmcfadden-homebrew-tap`, with remote `https://github.com/jeffmcfadden/homebrew-tap.git` and tap name `jeffmcfadden/tap`.

Read the tap's `AGENTS.md` before working, even when the current project is elsewhere. Execute tap commands with an explicit working directory. When adding the current project, inspect its release artifacts, build instructions, dependencies, and executable names before selecting a formula or cask design.

The user's defaults are latest stable releases, maintenance only when requested, and validation followed by committing and pushing to `origin/main`. Apply these defaults within the requested maintenance scope; do not schedule updates or publish unrelated project changes.

This skill does not grant filesystem permissions. For CLI sessions launched elsewhere, the tap must be writable. Launch with:

```bash
codex --add-dir /Users/jeffmcfadden/code/jeffmcfadden-homebrew-tap
```

If access is unavailable, explain the required directory access. Do not bypass sandboxing. If the canonical checkout is missing, report it rather than silently using a different checkout.
