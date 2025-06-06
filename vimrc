syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
filetype plugin indent on
set hlsearch
set nowrap
set ttimeoutlen=100
set noswapfile
set nobackup
set laststatus=2
set bg=dark
let mapleader=" "
nnoremap <leader>n :set nu!<CR>
nnoremap <leader>/ :noh<CR>
nnoremap <leader>z :set wrap!<CR>
nnoremap <C-j> :m .+1<CR>
nnoremap <C-k> :m .-2<CR>
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

