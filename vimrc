syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
set incsearch
set ruler
set mouse=nv
set hidden
set scrolloff=3
set colorcolumn=80
set directory^=$HOME/.vim//
set backspace=indent,eol,start
set bg=dark

let mapleader=" "
nnoremap <leader>n :set nu!<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>p :set paste!<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

highlight Comment ctermfg=blue
highlight Search ctermbg=red
highlight IncSearch ctermfg=red
highlight ColorColumn ctermbg=232
