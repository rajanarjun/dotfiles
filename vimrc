syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
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
