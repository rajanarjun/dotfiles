syntax on
set nu rnu
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set bs=indent,eol,start
set hlsearch
set incsearch
set ignorecase smartcase
let mapleader="\<space>"
nnoremap <leader>1 :set rnu!<CR>
nnoremap <leader><space> :noh<CR>
set bg=dark
hi Comment ctermfg=blue
hi Search ctermbg=red
hi IncSearch ctermfg=red
