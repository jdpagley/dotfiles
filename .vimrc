" Load Plugins
call pathogen#infect()
call pathogen#helptags()

" Colorscheme
colorscheme aloe

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on


set tabstop=2
set shiftwidth=2
set expandtab
set splitbelow
set splitright

" Not compatible with vi
set nocompatible

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Show line numbers
set number

" Allow hidden buffers, dont limit to 1 file per window/split
set hidden

" Set tapping space
set softtabstop=2

" Sane Pasting 
set paste

" Endable Mouse Clicks In Vim (Used with NERDtree)
set mouse=a

" Insert new line without going into insert mode
noremap oo o<Esc>
noremap OO O<Esc>

" Splits 
nnoremap <C-J> <C-W><C-J> " Ctrl-J to move down a split
nnoremap <C-K> <C-W><C-K> " Ctrl-K to move up a split
nnoremap <C-L> <C-W><C-L> " Ctrl-L to move right a split
nnoremap <C-H> <C-W><C-H> " Ctrl-H to move left a split

" Run mocha tests for current test file
map ,t :w\|:!mocha %

" Split current line onto new line
map <Return><Return> i<Return><Esc>

"======== NERDTree Config Start ========

" Open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close Vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  

" Start NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree

"Start NERDTree automatically when vim starts up and no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"======== NERDTree Config End ==========


