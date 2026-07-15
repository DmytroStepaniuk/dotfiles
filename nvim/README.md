# NVIM

[AstroNvim](https://astronvim.com)-based Neovim config (started from
[AstroNvim/template](https://github.com/AstroNvim/template)).

## Installation and usage

Unlike other dirs in this repo, nvim needs the whole directory, so it is
wired up with a symlink instead of a source/include line:

```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
nvim  # lazy.nvim bootstraps and installs all plugins on first start
```

## Notable customizations

- `lua/plugins/neo-tree.lua` — show dotfiles in the file tree
- `lua/polish.lua` — guifont (JetBrainsMono Nerd Font Mono) for GUI clients
- `lazy-lock.json` — pinned plugin versions (tracked)

## Neovide (optional GUI)

[Neovide](https://neovide.dev) is a GPU-accelerated GUI client for Neovim —
same nvim, same config and plugins, just rendered in its own window with
smooth animations instead of the terminal. Not a replacement for terminal
nvim (which is still needed over SSH, in tmux, etc.) — they coexist.

```bash
brew install --cask neovide
neovide .   # open current dir; picks up this config automatically
```

Neovide-specific tuning (animations, opacity, ...) goes into
`lua/polish.lua` inside an `if vim.g.neovide then ... end` block —
that variable only exists when nvim runs under Neovide.
