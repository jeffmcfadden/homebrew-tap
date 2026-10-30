# Jeffmcfadden Tap

## How do I install these formulae?

`brew install jeffmcfadden/tap/<formula>`

Or `brew tap jeffmcfadden/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jeffmcfadden/tap"
brew "<formula>"
```

## Agent Manager

Install the Apple Silicon app (macOS 13 or newer) and its tmux dependency:

```sh
brew install --cask jeffmcfadden/tap/agent-manager
```

You can also [download the app from GitHub Releases](https://github.com/jeffmcfadden/agent-manager/releases).
The app is ad hoc signed and is not notarized; macOS may require approval in
System Settings → Privacy & Security on first launch.

## Maintenance with Codex CLI

From any project directory, start Codex with access to this checkout:

```bash
codex --add-dir /Users/jeffmcfadden/code/jeffmcfadden-homebrew-tap
```

Use `$homebrew-tap` or ask “Add this project to my tap” or “Check my tap for
updates.” The personal skill reads this tap's `AGENTS.md`. Maintenance uses
stable releases, runs only when requested, and includes committing and pushing
validated changes to `main`.

The skill source is tracked in `.agents/skills/homebrew-tap` and linked into
`~/.agents/skills/homebrew-tap` for discovery across projects.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
