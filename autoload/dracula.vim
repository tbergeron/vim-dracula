" Palette: {{{

let g:dracula#palette           = {}
let g:dracula#palette.fg        = ['#F8F8F2', 253]

let g:dracula#palette.bglighter = ['#282936', 238]
let g:dracula#palette.bglight   = ['#282936', 237]
let g:dracula#palette.bg        = ['#282936', 236]
let g:dracula#palette.bgdark    = ['#282936', 235]
let g:dracula#palette.bgdarker  = ['#282936', 234]

let g:dracula#palette.comment   = ['#282936',  61]
let g:dracula#palette.selection = ['#282936', 239]
let g:dracula#palette.subtle    = ['#282936', 238]

let g:dracula#palette.cyan      = ['#282936', 117]
let g:dracula#palette.green     = ['#282936',  84]
let g:dracula#palette.orange    = ['#282936', 215]
let g:dracula#palette.pink      = ['#282936', 212]
let g:dracula#palette.purple    = ['#282936', 141]
let g:dracula#palette.red       = ['#282936', 203]
let g:dracula#palette.yellow    = ['#282936', 228]

"
" ANSI
"
let g:dracula#palette.color_0  = '#282936'
let g:dracula#palette.color_1  = '#282936'
let g:dracula#palette.color_2  = '#282936'
let g:dracula#palette.color_3  = '#282936'
let g:dracula#palette.color_4  = '#282936'
let g:dracula#palette.color_5  = '#282936'
let g:dracula#palette.color_6  = '#282936'
let g:dracula#palette.color_7  = '#282936'
let g:dracula#palette.color_8  = '#282936'
let g:dracula#palette.color_9  = '#282936'
let g:dracula#palette.color_10 = '#282936'
let g:dracula#palette.color_11 = '#282936'
let g:dracula#palette.color_12 = '#282936'
let g:dracula#palette.color_13 = '#282936'
let g:dracula#palette.color_14 = '#282936'
let g:dracula#palette.color_15 = '#282936'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
