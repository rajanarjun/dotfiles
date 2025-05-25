syntax on
set nu
set rnu
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
set autoindent
set hlsearch 
set incsearch
set ignorecase
set smartcase
set nowrap
set linebreak
set scrolloff=3
set noswapfile
set ttimeoutlen=100
set hidden
set bg=dark
let mapleader=" "
nnoremap <leader>r :set rnu!<CR>
nnoremap <leader>z :set wrap!<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <C-j> :m .+1<CR>
nnoremap <C-k> :m .-2<CR>
nnoremap <leader><space> :noh<CR>
