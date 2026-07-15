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
