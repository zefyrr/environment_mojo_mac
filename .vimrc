set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'FStarLang/VimFStar'
Bundle 'klen/python-mode'

call vundle#end()            " required
filetype plugin indent on    " required


syntax on
set mouse=a
set paste

set expandtab
set shiftwidth=2
set softtabstop=2
set ruler

set colorcolumn=100
set statusline+=%F
set number
set cursorline
set showcmd
set showmatch

"Reading
set autoread

"Search
set magic
set incsearch
set hlsearch
set ignorecase
set smartcase

"Disable .swp backups
set nobackup
set nowritebackup
set noswapfile

nmap <silent> <c-n> :NERDTreeToggle<CR>


