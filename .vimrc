set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Molokai color

" Automatic reload of .vimrc when saving
autocmd! bufwritepost .vimrc source %

" Color Theme
colo molokai	

" Set powerline theme
let g:airline_theme='badwolf' 

" Set cursor line highlight
set cul

" Unmap the arrow keys

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

set number

set wrapmargin=8

" Select All
map <C-a> <ESC>ggVG

vnoremap <C-c> "+y
imap <C-c> "+y

map <C-v> "+p
imap <C-v> <ESC>"+P

map <C-n> :NERDTreeToggle<CR>

map <C-s> :update<CR>

imap <C-s> <esc> :update<CR>

map <C-x> <esc>:wq<CR>

imap <C-x> <esc>:wq<CR>

" Edit inside....
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i 
imap <leader>( ()<ESC>i 
imap <leader>[ []<ESC>i 

" gO to create a new line below cursor in normal mode
nmap gO O<ESC>

" go to create a new line above cursor
nmap go o<ESC>k

"auto center
map G Gzz
map n nzz

" Tab close
map tc :tabc<CR>

" Better moving of code blocks
vnoremap < <gv
vnoremap > >gv

"Set colors for tmux
set t_Co=256

" Real programmer don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
