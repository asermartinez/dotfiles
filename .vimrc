set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomtom/tcomment_vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<CR>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" Automatic reload of .vimrc when saving
autocmd! bufwritepost .vimrc source %

" Color Theme
colo molokai	

" Set powerline theme
let g:airline_theme='badwolf' 

set t_Co=256 "Set colors for tmux
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

set cul " Set cursor line highlight
set number
set wrapmargin=8
set linebreak " Break lines but not words
set nolist " Not showing invisble characters

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

"###############################################################################
" YouCompleteMe Settings
"###############################################################################
let g:ycm_python_binary_path = 'python3'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

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

" UtilSnips conflict with YCM:
" function! g:UltiSnips_Complete()
"     call UltiSnips#ExpandSnippet()
"     if g:ulti_expand_res == 0
"         if pumvisible()
"             return "\<C-n>"
"         else
"             call UltiSnips#JumpForwards()
"             if g:ulti_jump_forwards_res == 0
"                return "\<TAB>"
"             endif
"         endif
"     endif
"     return ""
" endfunction
"
" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-e>"
" " this mapping Enter key to <C-y> to chose the current highlight item 
" " and close the selection list, same as other IDEs.
" " CONFLICT with some plugins like tpope/Endwise
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:ycm_key_list_select_completion=['<C-n>', '<Down>'] 
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>'] 
let g:UltiSnipsExpandTrigger="<Tab>" 
let g:UltiSnipsJumpForwardTrigger="<Tab>" 
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

