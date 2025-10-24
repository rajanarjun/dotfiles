syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
set incsearch
set mouse=nv
set bg=dark
hi Comment ctermfg=blue
hi Search ctermbg=red
hi IncSearch ctermfg=red
let mapleader="\<Space>"
nnoremap <leader>1 :set nu!<CR>
nnoremap <leader><leader> :noh<CR>
vnoremap <leader>y "+y
inoremap {<CR> {<CR>}<ESC>O
