set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'gabrielelana/vim-markdown'
Plugin 'tyru/open-browser.vim'
Plugin 'kannokanno/previm'

call vundle#end()            " required
filetype plugin indent on    " required
colorscheme codedark
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

" Markdown : Preview
let g:previm_open_cmd = 'open -a Brave\ Browser'

nnoremap ¡ : NERDTreeToggle<CR>

set nu
set ruler
set ai
set wrap
set cindent

syntax on
set tabstop=4 
set softtabstop=4 
set shiftwidth=4

set mouse=a
let g:NERDTreeMouseMode=3


set showmatch
set t_Co=256

set hlsearch


