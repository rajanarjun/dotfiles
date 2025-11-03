set nocompatible
syntax on
set number
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
set incsearch
set smartcase
set ignorecase
set path+=**
set mouse=nv
set bg=dark
hi Comment ctermfg=blue
hi Search ctermbg=red
hi IncSearch ctermfg=red

" --- Install vim-plug if it doesn't exist ---
if !filereadable(expand('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/vim-lsp'
call plug#end()

" --- Register servers ---
if executable('clangd')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'clangd',
      \ 'cmd': {server_info->['clangd', '--background-index']},
      \ 'allowlist': ['c', 'cpp'],
      \})
endif

if executable('pylsp')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'pylsp',
      \ 'cmd': {server_info->['pylsp']},
      \ 'allowlist': ['python'],
      \})
endif

" --- Buffer-local setup when LSP attaches ---
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=no
  let g:lsp_diagnostics_enabled = 1
  let g:lsp_diagnostics_virtual_text_enabled = 0
  let g:lsp_diagnostics_signs_enabled = 0
  let g:lsp_document_highlight_enabled = 0
  let g:lsp_diagnostics_highlights_enabled = 0
  let g:lsp_document_code_action_signs_enabled = 0
  let g:lsp_diagnostics_float_insert_mode_enabled = 0
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gD <plug>(lsp-declaration)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> gi <plug>(lsp-implementation)
  nmap <buffer> gt <plug>(lsp-type-definition)
  nmap <buffer> K  <plug>(lsp-hover)
  nmap <buffer> <leader>rn <plug>(lsp-rename)
endfunction

augroup lsp_setup
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let mapleader="\<space>"
nnoremap <leader><space> :noh<CR>
nnoremap <leader>y "+yy
vnoremap <leader>y "+y
nnoremap <leader>5 :%y+<CR>
inoremap {<CR> {<CR>}<ESC>O
nnoremap <leader>ls :LspDocumentDiagnostics<CR>
