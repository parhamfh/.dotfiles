" ### Vundle ###
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" My Plugins here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround.git'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'

" Colorschemes
Plugin 'nanotech/jellybeans.vim'
"Plugin 'garybernhardt/dotfiles/.vim/colors/grb256.vim'

" vim-scripts repos
Plugin 'L9'

call vundle#end()
filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

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

" Standard indentation settings

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

"" Language specific
" Ruby
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Mouse mode
set mouse=a

" FOR POWERLINE
" Set terminal xcolor-256 instead, the proper way
" set t_Co=256

let g:Powerline_symbols = 'unicode'
" Disable vi-compatibility
set nocompatible
" Always show statusbar
set laststatus=2
" For powerline symbols
let g:Powerline_symbols = 'fancy'
