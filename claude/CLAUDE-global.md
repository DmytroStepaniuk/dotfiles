# Global preferences (all Claude accounts)

Shared, account-agnostic preferences. Imported via `@` from each account's
`CLAUDE.md` (`~/.claude-accounts/*/CLAUDE.md`). Account-specific rules
(work conventions, Jira, projects) live in the account files, not here.

## Language

- **Chat**: Ukrainian — always respond in Ukrainian
- **Everything written**: English — code, comments, commit messages, PRs,
  documentation, CLAUDE.md files

## Environment

- **Version manager**: asdf — check `asdf current` / `.tool-versions` before
  running `ruby`, `go`, `node`, `python`, `bundle`, etc.
- **Shell config layout**: `~/.zshrc` is minimal; per-project config is modular
  in `~/.zshrc_ext/` (one file per project, incl. `claude.sh` with Claude
  account aliases). Generic dotfiles (git aliases, vim, nvim, zsh helpers)
  live in `~/dotfiles` (github.com/DmytroStepaniuk/dotfiles) —
  see `~/dotfiles/CLAUDE.md`
- **Secrets**: macOS Keychain via `security find-generic-password`,
  never plaintext in dotfiles

## Preferences

- **Font**: JetBrainsMono Nerd Font Mono — use in any font-related config
  (installed via `brew install --cask font-jetbrains-mono-nerd-font`)
