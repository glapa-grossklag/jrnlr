" ------------------------------------------------------------------------------
" Globals
" ------------------------------------------------------------------------------

if exists('g:jrnlr_loaded')
    finish
endif

if !exists('g:jrnlr_extension')
    let g:jrnlr_extension = '.txt'
endif

" ------------------------------------------------------------------------------
" Functions
" ------------------------------------------------------------------------------

function s:Today()
    return strftime('%F')
endfunction

function s:Tomorrow()
    return strftime('%F', localtime() + (60 * 60 * 24))
endfunction

function s:Yesterday()
    return strftime('%F', localtime() - (60 * 60 * 24))
endfunction

function s:Open(date)
    if !exists('g:jrnlr_dir')
        echoerr 'Please set g:jrnlr_dir'
        return
    endif

    execute 'edit' g:jrnlr_dir . '/' . a:date . g:jrnlr_extension

    if exists('g:jrnlr_template') && line2byte('$') == -1
        execute 'read' g:jrnlr_template
        0delete " Delete the blank line at the top.
    endif
endfunction

" ------------------------------------------------------------------------------
" Commands
" ------------------------------------------------------------------------------

command! JrnlrToday     call <SID>Open(<SID>Today())
command! JrnlrTomorrow  call <SID>Open(<SID>Tomorrow())
command! JrnlrYesterday call <SID>Open(<SID>Yesterday())

let g:jrnlr_loaded = 1
