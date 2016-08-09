function! potion#running#PotionCompileAndRunFile()
    execute "silent" . ":w"
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! potion#running#PotionShowByteCode()
    execute "silent" . ":w"
    " Get the bytecode
    let bytecode = system(g:potion_command . " -c -V " . bufname("%") . " 2>&1")

    if v:shell_error == 0
        " Open a new split and set it up.
        if bufwinnr("__Potion_Bytecode__") == -1
            vsplit __Potion_Bytecode__
            let g:bytecode_win_nu = winnr()
        else
            execute g:bytecode_win_nu . "wincmd w"
            b __Potion_Bytecode__
        endif
        normal! ggdG
        setlocal filetype=potionbytecode
        setlocal buftype=nofile

        " Insert the bytecode
        call append(0, split(bytecode, '\v\n'))
    else
        echo split(bytecode, '\v\n')
    endif
endfunction
