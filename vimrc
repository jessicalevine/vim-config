" Quick thanks to the Internet and Sam Rose for all the help
set nocompatible " Disable vi compatibility

" VUNDLER START
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" My vundles
Bundle 'fakeclip'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'tomtom/tcomment_vim'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on " required!
" VUNDLER END

" Checks for 256 colors
" Thanks to deploymentzone.com and Xoria256
if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  echomsg ""
  finish
endif

colorscheme jellybeans

" Set leader to `
let mapleader = " "

set tabstop=2 " Four spaces to a tab.
set softtabstop=2
set shiftwidth=2 " Number of spaces to use for autoindenting.
set expandtab " Spaces as tabs

set nu " Enable line numbers

set showmatch
set showcmd
set showmode

syntax on " Enable syntax highlighting

filetype plugin indent on " Enable filetype recog. and indenting

set ignorecase smartcase " Smart case decisions in search

set incsearch
set nohlsearch

" Captial writes and quits are lowercase
command! W w                        
command! WQ wq
command! Wq wq
command! Q q

set directory=~/.vimswp " Set a dedicated swp directory

set modelines=0 " Disable some security issues

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" Navigate by file line not screen line
nnoremap j gj
nnoremap k gk

" Commands with semicolon
nnoremap ; :

" jj to exit inset, when do you type it?
inoremap jj <ESC>

" Navigate splits with ctrl-direction
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

set visualbell

" Fast scrolling
set ttyfast

" Easily source vimrc
nmap <Leader>s :source $MYVIMRC<CR>

" Longer command history
set history=1000

" Set title of file as terminal title
let &titlestring = ":vim => " . expand("%:t")
set title

" Scroll 3 before buffer end
set scrolloff=3

" Show limited line info in statusline
set ruler

" Round indents to multiple of shiftwidth
set shiftround

" Maps for window resizing
noremap <silent> <Leader><Left> <C-w><
noremap <silent> <Leader><Down> <C-W>-
noremap <silent> <Leader><Up> <C-W>+
noremap <silent> <Leader><Right> <C-w>>

" BEGIN PLUGIN CONFIGURATION

" fakeclip configuration
vmap <Leader>y "+y
map <Leader>p "+p

" NERDTree configuration
map <Leader>o :NERDTreeToggle<CR>

" tComment configuration
vmap <Leader>c gc
nmap <Leader>c gcc

" Powerline configuration
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
 
" END PLUGIN CONFIGURATION
