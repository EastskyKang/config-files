set nocompatible
syntax on

set hidden
set wildmenu
set autoindent

set shiftwidth=4
set softtabstop=4
set expandtab
set nu
set t_Co=256

" turn on NERDTREE on startup 
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" buffer to remember last edited line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" vundle below
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins 
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'Wombat'
Plugin 'scrooloose/nerdtree'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

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

" plugins  
colorscheme molokai
