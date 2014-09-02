" ### Vundle ###
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround.git'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'mustache/vim-mustache-handlebars'

" Colorschemes
Bundle 'nanotech/jellybeans.vim'
"Bundle 'garybernhardt/dotfiles/.vim/colors/grb256.vim'

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

" ### PERSONAL CONFIG ###

" Line Numbers
set number

" Syntax highlighting (Enable doesn't override color settings 'syntax on' does)
syntax enable

set background=dark
colors jellybeans

" Encoding
set encoding=utf-8

" Text width 0 to avoid vim inserting linebreaks at 79 characters = ANNOYING
set textwidth=0

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
" Set terminal xterm-256color instead, the proper way
" set t_Co=256

let g:Powerline_symbols = 'unicode'
" Disable vi-compatibility
set nocompatible
" Always show statusbar
set laststatus=2
" For powerline symbols
let g:Powerline_symbols = 'fancy'
