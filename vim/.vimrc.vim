set number
set expandtab
set tabstop=2

set hlsearch
set incsearch
set errorbells
set nocompatible

filetype on
filetype plugin on
filetype indent on

set wildmenu

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

" FiraCode Nerd Font
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

" Mappings

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" set termguicolors

colorscheme gruvbox
set background=dark

let g:conoline_auto_enable = 1

set guifont=FiraCode\ Nerd\ Font:h15
