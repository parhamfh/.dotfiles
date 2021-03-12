" ### Vundle ###
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" My Plugins here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround.git'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'easymotion/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-commentary'
Plugin 'majutsushi/tagbar'
Plugin 'tmhedberg/SimpylFold'
Plugin 'fatih/vim-go'
Plugin 'udalov/kotlin-vim'
Plugin 'prettier/vim-prettier'
Plugin 'psf/black'

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
" Mouse mode
set mouse=a

" FOR CTRL-P
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dist)|(\.(swp|git|DS_Store))$|\v\.pyc'
let g:ctrlp_show_hidden = 1

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

set whichwrap+=<,>,[,]

" Use the C++11 standard with Syntastic
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Activate .jsx syntax for .js files too (??)
let g:jsx_ext_required = 0

" Remove trailing whitespace
autocmd BufWritePre *.sql :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.yml :%s/\s\+$//e

" Auto black
autocmd BufWritePre *.py execute ':Black'

" recognize Markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" MAP KEYS
" inoremap <ESC><BS> <C-W> "Doesn't work

" Needed for backspace since Vim 8 
set backspace=indent,eol,start

" BINDINGS
nmap \r :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

set scrolloff=7

""""" MY BINDINGS """"

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

" Folding
" autocmd Filetype python setlocal foldmethod=indent
set foldopen-=block

"""" PRETTIER
autocmd BufWritePre *.js,*.jsx,*.html,*.css PrettierAsync
