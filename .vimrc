" Load Plugins
 call pathogen#infect()

" Colorscheme
" colorscheme aloe

set background=dark
colorscheme gruvbox

" Switch syntax highlighting on
syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set splitbelow
set splitright

" Ignore case when searching 
set ignorecase 

" Not compatible with vi
set nocompatible

" Copies the indentation from the previous line, when starting a new line.
" More information about code indentation http://vim.wikia.com/wiki/Indenting_source_code
set autoindent
set smartindent

" Enable file type detection and do language-dependent indenting
filetype on
filetype plugin on
filetype indent on

"filetype plugin indent on

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Show line numbers
set number

" Allow hidden buffers, dont limit to 1 file per window/split
set hidden

" Set tapping space
set softtabstop=2

" Sane Pasting 
set pastetoggle=<f5> 

" Endable Mouse Clicks In Vim (Used with NERDtree)
set mouse=a

" Copying to clipboard
set clipboard=unnamed

" Set <Leader> to <,>
let mapleader=","

" Status Line, :h statusline command  
set laststatus=2                             " always show statusbar  
set statusline=  
set statusline+=%-10.3n\                     " buffer number  
set statusline+=%f\                          " filename   
set statusline+=%h%m%r%w                     " status flags  
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
set statusline+=%=                           " right align remainder  
set statusline+=0x%-8B                       " character value  
set statusline+=%-14(%l,%c%V%)               " line, character  
set statusline+=%<%P                         " file position  

" Insert new line without going into insert mode
noremap oo o<Esc>
noremap OO O<Esc>

" Splits 
nnoremap <C-J> <C-W><C-J> " Ctrl-J to move down a split
nnoremap <C-K> <C-W><C-K> " Ctrl-K to move up a split
nnoremap <C-L> <C-W><C-L> " Ctrl-L to move right a split
nnoremap <C-H> <C-W><C-H> " Ctrl-H to move left a split

" Split current line onto new line
map <Return><Return> i<Return><Esc>

" Search visually selected text
vnoremap // y/<C-R>"<CR>


"======== CtrlP Config Start ========
"
let g:ctrlp_max_files=0

"======== CtrlP Config End ========

"======== NERDTree Config Start ========

" Open NerdTreeTabs on startup
let g:nerdtree_tabs_open_on_console_startup=1

" Open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close Vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  

" Start NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree

"Start NERDTree automatically when vim starts up and no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * let g:NERDTreeWinSize=45

"Adjust NERDTree window size
autocmd VimEnter * let g:NERDTreeWinSize=45

"======== NERDTree Config End ==========


