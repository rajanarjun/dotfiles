set nocompatible
syntax on
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set linebreak
filetype plugin indent on
set directory=$HOME/.vim/swap/
set clipboard=unnamedplus
set background=dark
highlight Search ctermbg=red

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
call plug#end()

let mapleader = " "
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :Files ~/<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <Leader>n :noh<CR>
nnoremap <leader>e :25Lex<CR>
autocmd FileType c,cpp setlocal commentstring=//\ %s
autocmd FileType make,c,cpp,cmake,sh,bash setlocal noexpandtab
