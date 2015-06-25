" Load Plugins
call pathogen#infect()
call pathogen#helptags()

set tabstop=2
set shiftwidth=2
set expandtab

" Not compatible with vi
set nocompatible

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, dont limit to 1 file per window/split
set hidden

" Set tapping space
set softtabstop=2

" Insert new line without going into insert mode
noremap oo o<Esc>
noremap OO O<Esc>

" Splits 
nnoremap <C-J> <C-W><C-J> " Ctrl-J to move down a split
nnoremap <C-K> <C-W><C-K> " Ctrl-K to move up a split
nnoremap <C-L> <C-W><C-L> " Ctrl-L to move right a split
nnoremap <C-H> <C-W><C-H> " Ctrl-H to move left a split

set splitbelow
set splitright

" Run mocha tests for current test file
map ,t :w\|:!mocha %

" Split current line onto new line
map <Return><Return> i<Return><Esc>

" Colorscheme
colorscheme aloe
