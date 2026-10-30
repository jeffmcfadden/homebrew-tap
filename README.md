# Jeffmcfadden Tap

## How do I install these formulae?

`brew install jeffmcfadden/tap/<formula>`

Or `brew tap jeffmcfadden/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jeffmcfadden/tap"
brew "<formula>"
```

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
