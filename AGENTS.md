# Personal Homebrew tap

- Tap: `jeffmcfadden/tap`; GitHub repository: `jeffmcfadden/homebrew-tap`.
- Maintain formulae in `Formula/` and casks in `Casks/` when applicable. Use Ruby for helpers.
- Update only when requested. Default to the latest stable upstream release; skip prereleases unless requested.
- For requested maintenance, validate the changes, commit them, and push to `origin/main`. This is the user's standing publishing preference; another confirmation is unnecessary within the requested scope.
- Read the working tree before editing. Preserve unrelated changes and stage only files belonging to the request. Do not force-push or overwrite divergent remote history.
- Verify release artifacts against upstream, compute SHA-256 from the actual download, and update dependencies and installation logic as needed. Read the relevant source project's release and build instructions.
- Run relevant Homebrew style, audit, installation, and formula tests where supported. Report any checks that cannot run. Never claim a placeholder test validates the executable.
- Before publishing, fetch and reconcile `origin/main` without discarding local work. Stop and report an authentication or unresolved history problem rather than repeatedly retrying.
- Report changed versions, validation results, and commit/push status.

