" Download and install vim-plug (cross platform).
if empty(glob(
    \ '$HOME/' . (has('win32') ? 'vimfiles' : '.vim') . '/autoload/plug.vim'))
  execute '!curl -fLo ' .
    \ (has('win32') ? '\%USERPROFILE\%/vimfiles' : '$HOME/.vim') . 
    \ '/autoload/plug.vim --create-dirs ' .
    \ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Manage plugins by using vim-plug
call plug#begin()
" List your plugins here
Plug 'junegunn/vim-plug'
Plug 'prabirshrestha/vim-lsp'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
call plug#end()

" general
set number
language messages en_GB
colorscheme habamax
" set relativenumber
syntax on
set backspace=2
"set foldmethod=indent
"set foldcolumn=1
colorscheme habamax
autocmd BufRead + normal zR
set wildmenu
set wildmode=list:longest,full

" define command
command! Bd :bp | :sp | :bn | :bd " close a buffer without closing a window

" key mapping
" normal mode
nnoremap ; :
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" insert mode
inoremap jk <ESC>
inoremap kj <ESC>
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
" visual mode
vnoremap jk <ESC>
vnoremap kj <ESC>

" plugin
packloadall
silent! helptags ALL

" mouse
set mouse=

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
