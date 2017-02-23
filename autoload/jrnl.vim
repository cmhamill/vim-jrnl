if exists('g:loaded_jrnl') | finish | endif | let g:loaded_jrnl = 1

function! jrnl#journal_files(...) abort
    if a:0
        augroup jrnl_journal_files
            autocmd!
            execute 'autocmd BufRead,BufNewFile '
                \ . join(map(copy(a:000), 'expand(v:val)'), ',')
                \ . ' set ft=jrnl'
        augroup END
    endif
endfunction
