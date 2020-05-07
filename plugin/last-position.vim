function! GotoLastPosition(...)
    if line("'\"") > 0 && line("'\"") <= line("$")
        exe "normal! g`\""
    endif
endfunction

if has("autocmd")
    autocmd BufReadPost * call GotoLastPosition()
endif
