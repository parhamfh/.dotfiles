" ### Vundle ###
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" Manoueuvering

Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'

" Code
Plugin 'tpope/vim-commentary'
Plugin 'tmhedberg/SimpylFold'

" Colorschemes
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on     " required!

""""" Lightline

set laststatus=2

""""" CtrlP

" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dist)|(\.(swp|git|DS_Store))$|\v\.pyc'
let g:ctrlp_show_hidden = 1

"""" Tagbar

nmap \r :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

"""" PERSONAL
color jellybeans

" Autoreload files
set autoread
au CursorHold * checktime

" Line Numbers
set number

" Syntax highlighting (Enable doesn't override color settings 'syntax on' does)
syntax enable

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

" Needed for backspace since Vim 8 
set backspace=indent,eol,start

" Mouse mode
set mouse=a

" Remove trailing whitespace
autocmd BufWritePre *.sql :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.yaml :%s/\s\+$//e
autocmd BufWritePre *.erb :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e

set scrolloff=7
autocmd BufRead Dockerfile* setlocal syntax=dockerfile

" Auto black
autocmd BufWritePre *.py execute ':Black'

" recognize Markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" FOLDS
set foldopen-=block

" BINDINGS

" Start/end of line
map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A

" Cut & Copy to OS X
" " ctrl-x for cut
vmap <C-x> :!pbcopy<cr>

" ctrl-c for copy
vmap <C-c> :w !pbcopy<cr><cr>
