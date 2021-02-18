call plug#begin('~/.vim/plugged')
    Plug '9mm/vim-closer'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-endwise'
call plug#end()

" general
" i don't know what this does
set nocompatible
filetype plugin indent on

" line number
set number relativenumber

" indentation
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" search
set incsearch
set nohlsearch

" sound
set noerrorbells

" line wrap and scrolling
set nowrap
set scrolloff=8

" backup
set noswapfile
set nobackup

" leader
let mapleader=" "
noremap <leader>p "+p
noremap <leader>a gg^vG$
noremap <leader>ya gg"+yG

" coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

highlight CocHintFloat ctermfg=22
highlight CocInfoFloat ctermfg=19
highlight CocWarningFloat ctermfg=130
highlight CocErrorFloat ctermfg=160
highlight PMenu ctermbg=7
