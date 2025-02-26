set mouse=a
set clipboard=unnamedplus
set nu
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set si

call plug#begin()

" List your plugins here
Plug 'tpope/vim-commentary'

call plug#end()

set bg=dark
syntax on
hi Visual ctermbg=white ctermfg=black
let g:loaded_matchparen=1
let mapleader = " "
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <leader>m :set rnu!<CR>
