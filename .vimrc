" Vundle stuff
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround.git'
Bundle 'Lokaltog/vim-powerline'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'kien/ctrlp.vim'
" vim-scripts repos
Bundle 'L9'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" My own stuff
color darkblue
syntax on
" Line numbers
set number

" Encoding
set encoding=utf-8

" Text width
set textwidth=79

" column width
set tabstop=4
" expand tabs to spaces
set expandtab
" When you press Tab in insert mode, number of _columns_
set softtabstop=4
" How many columns when you use reindent (<< and >>)
set shiftwidth=4

" Indent options
set autoindent
set smartindent
" Mouse mode
set mouse=a

" FOR POWERLINE


set t_Co=256
let g:Powerline_symbols = 'unicode'
" Disable vi-compatibility
set nocompatible
" Always show statusbar
set laststatus=2
" For powerline symbols
let g:Powerline_symbols = 'fancy'
