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
set tabstop=2
set softtabstop=2 
set shiftwidth=2

set mouse=a
let g:NERDTreeMouseMode=3


set showmatch
set t_Co=256

set hlsearch

" run .py, .c, .cpp, .sh in vim
nmap <F5> :call CompileRun()<CR>

" Define a function to return the path of the virtual environment if it exists
function! GetVenvPath()
    " get the current directory
    let l:current_dir = expand('%:p:h')
    let l:current_dir_name = fnamemodify(l:current_dir, ':t')
    let l:venv_path = l:current_dir . '/' . l:current_dir_name . '-virtualenv/bin/python3'
    if filereadable(l:venv_path)
        return l:venv_path
    else
        return 'python3'
    endif
endfunction

func! CompileRun()
    exec "w"
    if &filetype == 'python'
        " use the python interpreter from the virtual environment if it exists
        let l:python_interpreter = GetVenvPath()
        exec "!time " . l:python_interpreter . " %"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'cpp'
        exec "!runc %"
    elseif &filetype == 'c'
        exec "!runc %"
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc



