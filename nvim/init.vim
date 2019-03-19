filetype on
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'tmhedberg/SimpylFold'
Plug 'machakann/vim-highlightedyank'
Plug 'python-mode/python-mode', { 'branch': 'develop' }

call plug#end()

let g:deoplete#enable_at_startup = 1
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme onedark

" Airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)
set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete\ 12

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
" Copy
vnoremap <C-c> "+y
imap <C-c> "+y
" Paste
map <C-v> "+p
imap <C-v> <ESC>"+P
" Nerdtree
map <C-n> :NERDTreeToggle<CR>
" Save
map <C-s> :update<CR>
imap <C-s> <esc> :update<CR>

" Edit inside....
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

" Auto center
map G Gzz
map n nzz

" Tab close
map tc :tabc<CR>

" Better moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Disable search highlight
nnoremap <leader><space> :noh<cr>

" Indent folding
" set foldmethod=indent

"###############################################################################
" YouCompleteMe Settings
"###############################################################################
" let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

" Python-mode
let g:pymode_python = 'python3'
