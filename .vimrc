set mouse=a
set clipboard=unnamedplus
set nu rnu
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set si

set bg=dark
syntax on
hi Visual ctermbg=white ctermfg=black

let mapleader = " "
let g:loaded_matchparen = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
inoremap <C-c> <Esc>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <leader>m :set rnu!<CR>
nnoremap <leader>e :Lex<CR>
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
