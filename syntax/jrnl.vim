if exists('b:current_syntax')
  finish
endif

if !exists('g:jrnl_tagsymbols')
    let g:jrnl_tagsymbols = ['@']
endif

syntax match jrnlDate '^\d\{4\}-\d\{2\}-\d\{2\}'
syntax match jrnlTime ' \d\{2\}:\d\{2\} '
execute 'syntax match jrnlTag "\('. join(g:jrnl_tagsymbols, '\|') . '\)\(\w\|-\|+\|*\|#\|/\)\+"'

highlight def link jrnlDate String
highlight def link jrnlTag Identifier
highlight def link jrnlTime Type
