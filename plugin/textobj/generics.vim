if exists('g:loaded_textobj_generics')
  finish
endif

let g:textobj_generics_patterns = [
\ {
\   'header' : '\<\%(\h\k*\.\)*\h\k*',
\   'bra'    : '<',
\   'ket'    : '>',
\   'footer' : '',
\ },
\ ]

onoremap <silent> <Plug>(textobj-generics-i)  :<C-u>call textobj#functioncall#i('o', g:textobj_generics_patterns)<CR>
xnoremap <silent> <Plug>(textobj-generics-i)  :<C-u>call textobj#functioncall#i('x', g:textobj_generics_patterns)<CR>
onoremap <silent> <Plug>(textobj-generics-a)  :<C-u>call textobj#functioncall#a('o', g:textobj_generics_patterns)<CR>
xnoremap <silent> <Plug>(textobj-generics-a)  :<C-u>call textobj#functioncall#a('x', g:textobj_generics_patterns)<CR>
onoremap <silent> <Plug>(textobj-generics-innerparen-i) :<C-u>call textobj#functioncall#ip('o', g:textobj_generics_patterns)<CR>
xnoremap <silent> <Plug>(textobj-generics-innerparen-i) :<C-u>call textobj#functioncall#ip('x', g:textobj_generics_patterns)<CR>
onoremap <silent> <Plug>(textobj-generics-innerparen-a) :<C-u>call textobj#functioncall#ap('o', g:textobj_generics_patterns)<CR>
xnoremap <silent> <Plug>(textobj-generics-innerparen-a) :<C-u>call textobj#functioncall#ap('x', g:textobj_generics_patterns)<CR>

if exists('g:textobj_generics_no_default_key_mappings') | finish | endif

if !hasmapto('<Plug>(textobj-generics-i)')
  silent! omap <unique> ig <Plug>(textobj-generics-i)
  silent! xmap <unique> ig <Plug>(textobj-generics-i)
endif

if !hasmapto('<Plug>(textobj-generics-a)')
  silent! omap <unique> ag <Plug>(textobj-generics-a)
  silent! xmap <unique> ag <Plug>(textobj-generics-a)
endif

let g:loaded_textobj_generics = 1
