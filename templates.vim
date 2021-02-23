function! s:scratch(mods, cmd) abort
    if a:cmd is# ''
        let l:output = []
    elseif a:cmd[0] is# '!'
        let l:cmd = a:cmd =~' %' ? substitute(a:cmd, ' %', ' ' . expand('%:p'), '') : a:cmd
        let l:output = systemlist(matchstr(l:cmd, '^!\zs.*'))
    else
        let l:output = split(execute(a:cmd), "\n")
    endif

    execute a:mods . ' new'
    Scratchify
    call setline(1, l:output)
endfunction

command! Scratchify setlocal nobuflisted noswapfile buftype=nofile bufhidden=delete
command! -nargs=1 -complete=command Scratch call <SID>scratch('<mods>', <q-args>)

