set number
set expandtab
set tabstop=3

set hlsearch
set incsearch

syntax on

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Multiple Plug commands can be written in
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'miyakogi/conoline.vim'

" Color Schemas

Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" Mappings

map <C-n> :NERDTreeToggle<CR>

colorscheme gruvbox
set background=dark

let g:conoline_auto_enable = 1
