# dotfiles

Personal dotfiles of Dmytro Stepaniuk (`github.com/DmytroStepaniuk/dotfiles`).
Public repo — **never commit secrets, tokens, emails of clients, or anything
project-specific here.**

## The pattern

Real config files (`~/.gitconfig`, `~/.vimrc`, `~/.zshrc`) stay on the machine
and act as thin wrappers: each one includes/sources the corresponding file from
this repo. The repo holds only the portable, machine-independent part.

```
~/.gitconfig  --[include]-->  ~/dotfiles/git/.gitconfig
~/.vimrc      --[source]--->  ~/dotfiles/vim/.vimrc.vim
~/.zshrc      --[source]--->  ~/dotfiles/zsh/ltag.sh
```

What does NOT belong here: project/work config (lives in `~/.zshrc_ext/` —
gp.sh for Gopuff, w.sh for W Energy, claude.sh for Claude Code accounts),
secrets (live in macOS Keychain, read via `security find-generic-password`).

## Contents

| Dir | What | Notes |
|-----|------|-------|
| `git/` | Git aliases: `lg` (pretty graph log), `heir` (branches/tags-only tree), `lb` (last 20 visited branches) | |
| `vim/` | Vim config: options + vim-plug plugins (NERDTree, ctrlp, fugitive, auto-pairs, better-whitespace, gruvbox, devicons) | Plugins install with `:PlugInstall`; requires [vim-plug](https://github.com/junegunn/vim-plug) |
| `zsh/` | Shell functions: `ltag` (checkout latest git tag) | |

## Installation on a new machine

```bash
git clone git@github.com:DmytroStepaniuk/dotfiles.git ~/dotfiles

# git aliases
printf '\n[include]\n  path = ~/dotfiles/git/.gitconfig\n' >> ~/.gitconfig

# vim (install vim-plug first, then :PlugInstall inside vim)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
printf '\nsource ~/dotfiles/vim/.vimrc.vim\n' >> ~/.vimrc
vim +'PlugInstall --sync' +qall

# zsh helpers
printf '\nsource ~/dotfiles/zsh/ltag.sh\n' >> ~/.zshrc
```

## Conventions

- Commit messages: short, lowercase, prefixed — `add: ...`, `upd: ...`
- Comments and messages in code: English
- Each dir has its own `README.md` with the one-liner install command
