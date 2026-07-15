set number
set expandtab
set tabstop=2

set hlsearch
set incsearch
set ignorecase
set smartcase
set noerrorbells
set nocompatible

set cursorline
set mouse=a
set clipboard=unnamed

filetype on
filetype plugin on
filetype indent on

set wildmenu

syntax on

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'

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

set guifont=FiraCode\ Nerd\ Font:h15
