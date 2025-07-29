set nocompatible
syntax on
set number
set backspace=indent,eol,start
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set hlsearch
set incsearch
set path+=**
set mouse=nv

let mapleader=" "
nnoremap <leader><space> :noh<CR>
nnoremap <leader>1 :set nu!<CR>
nnoremap <leader>y "+yy
vnoremap <leader>y "+y
nnoremap <leader>p "+p

set bg=dark
hi Search ctermbg=red
hi IncSearch ctermfg=red
