" If you want to add your own plugin, or replace a standard plugin with your own, access ~/.vim/plugin
" Instead, if you wish to enhance an existing plugin's functionality
" while leaving the rest of its settings untouched, access ~/.vim/after/plugin
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

source ~/.config/nvim/after/plugin/my_defined_func.vim


set guicursor=n-v-c:ver25,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175


" Mapping
nnoremap <silent> <ScrollWheelUp> k
nnoremap <silent> <ScrollWheelDown> j
inoremap <silent> <ScrollWheelUp> <C-o>:normal! k<CR>
inoremap <silent> <ScrollWheelDown> <C-o>:normal! j<CR>

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
nnoremap <F5> :call CompileRun()<CR>
inoremap // <C-o>:call CommentSwitch()<CR>