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


source ~/.config/nvim/after/plugin/my_defined_func.vim

nnoremap <F5> :call CompileRun()<CR>
inoremap // <C-o>:call CommentSwitch()<CR>
