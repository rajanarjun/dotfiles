syntax on
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set hlsearch
set ignorecase
set smartcase
filetype plugin indent on
set wildmode=list:longest
set signcolumn=yes
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
colorscheme jellybeans

call plug#begin()
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
call plug#end()

autocmd FileType c,cpp setlocal commentstring=//\ %s
autocmd FileType make,c,cpp,cmake,sh,bash setlocal noexpandtab
autocmd VimEnter * delcommand Windows

let g:ale_linters_ignore = {
\   'python': ['pylint'],
\}

let g:ale_completion_enabled = 1
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_insert_leave = 1
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_python_flake8_options = '--ignore=E501,E302'
let g:ale_cursor_detail = 1
let g:ale_floating_preview = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']

let mapleader=" "
nnoremap <leader>F :Files ~/<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>e :25Lex<CR>
nnoremap <leader>K <cmd>ALEHover<CR>
nnoremap <leader>gd <cmd>ALEGoToDefinition<CR>
nnoremap <leader>gr <cmd>ALEFindReferences<CR>

highlight SignColumn ctermbg=None
highlight ALEErrorSign ctermfg=red
highlight ALEWarningSign ctermfg=yellow
highlight ALEError cterm=underline ctermbg=None
highlight ALEWarning cterm=underline ctermbg=None
highlight Pmenu ctermbg=None ctermfg=grey
