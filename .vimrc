" general
set number
language messages en_GB
"set relativenumber
syntax on
set backspace=2
colorscheme habamax
set foldmethod=indent
set foldcolumn=1
autocmd BufRead + normal zR
set wildmenu
set wildmode=list:longest,full

" define command
command! Bd :bp | :sp | :bn | :bd " close a buffer without closing a window

" key mapping
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
inoremap jk <ESC>
inoremap kj <ESC>
vnoremap jk <ESC>
vnoremap kj <ESC>

" plugin
packloadall
silent! helptags ALL

" mouse
"set mouse=a

" scroll
set scroll=4

" display status of command input
set showcmd
set showmode
set cursorline
set cursorcolumn
set smartindent
set showmatch
set laststatus=2

" tab
set list listchars=tab:\▸\-
set expandtab
set tabstop=4

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" copy
set clipboard=unnamed,unnamedplus

" indent
filetype plugin indent on
set autoindent
set shiftwidth=4

" swap file
"set directory=$HOME/.vim/swap//

" NERDTree
"let NERDTreeShowBookmarks=1
"autocmd VimEnter * NERDTree
