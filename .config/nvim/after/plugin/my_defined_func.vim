" FUNCTIONS --------------------------------------------------------------- {{{
func! CompileRun()
    w
    if &filetype ==# 'python'
        !python3 %
    elseif &filetype ==# 'zsh'
        !sh %
    elseif &filetype ==# 'c'
        !runc %
    elseif &filetype ==# 'c++'
        !runc %
    elseif &filetype ==# 'fortran'
        !runfort %
    elseif &filetype ==# 'ncl'
        !ncl %
    elseif &filetype ==# 'scheme'
        !~/Programming/Scheme/bin/gosh %
    endif
endfunc


function! CommentSwitch()
    let origin_position = getpos('.')
    let current_line = getline('.')
    execute "normal! I\<C-o>l\<Esc>"
    let head_position = getpos('.')

    if (&filetype ==# 'apache')
        if strpart(current_line, head_position[2]-1, 1) ==# '#'
            normal! x
            call cursor(origin_position[1], origin_position[2] - 1)
        else
            execute 'normal! i#'
            call cursor(origin_position[1], origin_position[2] + 1)
        endif
    elseif (&filetype ==# 'python') || (&filetype ==# 'sh') || (&filetype ==# 'zsh') || (&filetype ==# 'cmake')
        if strpart(current_line, head_position[2]-1, 1) ==# '#'
            normal! xx
            call cursor(origin_position[1], origin_position[2] - 2)
        else
            execute "normal! i#\<Space>"
            call cursor(origin_position[1], origin_position[2] + 2)
        endif
    elseif (&filetype ==# 'c') || (&filetype ==# 'c++') || (&filetype ==# 'cpp') || (&filetype ==# 'yacc') || (&filetype ==# 'lex')
        if strpart(current_line, head_position[2]-1, 2) ==# '//'
            normal! xxx
            call cursor(origin_position[1], origin_position[2] - 3)
        else
            execute "normal! i//\<Space>"
            call cursor(origin_position[1], origin_position[2] + 3)
        endif
    elseif &filetype ==# 'fortran'
        if strpart(current_line, head_position[2]-1, 1) ==# '!'
            normal! xx
            call cursor(origin_position[1], origin_position[2] - 2)
        else
            execute "normal! i!\<Space>"
            call cursor(origin_position[1], origin_position[2] + 2)
        endif
    elseif (&filetype ==# 'ncl') || (&filetype ==# 'scheme')
        if strpart(current_line, head_position[2]-1, 1) ==# ';'
            normal! xx
            call cursor(origin_position[1], origin_position[2] - 2)
        else
            execute "normal! i;\<Space>"
            call cursor(origin_position[1], origin_position[2] + 2)
        endif
    endif
endfunc 


" -------------------- }}}