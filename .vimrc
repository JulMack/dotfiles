" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" install plugin-manager vim-plug via:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Specify a directory for plugins avoiding using standard Vim directory 
" names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Tutorial for YCM: https://github.com/ycm-core/YouCompleteMe#full-installation-guide
Plug 'Valloric/YouCompleteMe'

call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Pick a leader key
let mapleader = ","

" Security
set modelines=0

" Set Clipboard to standard-Clipboard
set clipboard=unnamedplus

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
" set visualbell

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> 

" Space-remaps
nnoremap <silent> <Space> :noh<CR>
nnoremap <Space><Space> /\v

" Visualize tabs and newlines
set listchars=tab:>\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" ROS-Support for YCM:
let g:ycm_semantic_triggers = {
\   'roslaunch' : ['="', '$(', '/'],
\   'rosmsg,rossrv,rosaction' : ['re!^', '/'],
\ }
