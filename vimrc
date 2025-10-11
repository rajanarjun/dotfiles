syntax on
set number
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set backspace=2
set hlsearch
set ignorecase
set smartcase
set bg=dark
hi Comment ctermfg=blue
hi Search ctermbg=red
nnoremap <space><space> :noh<CR>
inoremap {<CR> {<CR>}<ESC>O
vnoremap <space>y "+y
nnoremap <space>5 :%y+<CR>
