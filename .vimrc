execute pathogen#infect()

" Syntax Highlighting and automatic filetype detection
syntax on
filetype plugin indent on

" Color and Font Scheme
colorscheme slate
set guifont=Menlo\ Regular:h20
set colorcolumn=100

" Write no backup files
set nobackup
set noswapfile
set nowritebackup

" Set tab key to create 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Set Automatic Indentation
set autoindent

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Set relative line number and ruler (column, line)
set ruler
set relativenumber

" Set status bar for file editing
set laststatus=2

" Keep 50 lines of command line history
set history=50

" Show the pattern of what's being searched for on the file and highlight it
set incsearch
set hlsearch

set mouse=a

" Convert current buffer to pretty JSON
command JSONBeautify :%!jq '.'

" Set Leader key to comma
let mapleader = ","

" Ctrl+k -> Previous tab
map <C-k> :tabp<CR>

" Ctrl+l -> Next tab
map <C-l> :tabn<CR>

" Ctrl+x -> Close all tabs except the current one
map <C-x> :tabo<CR>

" ,y -> Copy to clipboard
map <Leader>y "*y

" ,p -> Paste from clipboard
map <Leader>p "*p

" ,Space -> Beautify JSON
map <Leader>Space :JSONBeautify

" Ctrl+w -> Remove trailing whitespaces
map <C-w> :%s/\s\+$//e<CR>:noh<CR>

" Crtl+n -> Open current folder
map <C-n> :e .<CR>

" Disable closing multiple windows that belong to the same buffer
let bclose_multiple = 0

" Custom Javascript/Plugin stuff

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\ 'javascript': ['eslint', 'prettier'],
\ 'typescript': ['tslint', 'prettier'],
\}

let g:ale_fix_on_save = 1

set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/node_modules,*/coverage,*/dist,*.js~,*.json~,*.swo,*.swp,.git

map <C-t> :CtrlP<CR>
