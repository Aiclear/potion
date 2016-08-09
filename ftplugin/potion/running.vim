if !exists("g:potion_command")
    let g:potion_command = "/usr/local/bin/potion"
endif

nnoremap <buffer> <localleader>r 
            \ :call potion#running#PotionCompileAndRunFile()<cr>
nnoremap <buffer> <localleader>b 
            \ :call potion#running#PotionShowByteCode()<cr>
