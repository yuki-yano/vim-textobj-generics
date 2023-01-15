# vim-textobj-generics

Provides a textobj that handles generics.

This plugin depends on [vim-textobj-functioncall](https://github.com/machakann/vim-textobj-functioncall).

## Usage

```vim
" if disable default key mapping
let g:textobj_generics_no_default_key_mappings = v:true

" with vim-sandwich
onoremap <silent> ig <Plug>(textobj-generics-innerparen-i)
onoremap <silent> ag <Plug>(textobj-generics-i)
let g:sandwich#recipes += [
\ {
\   'buns': ['textobj#generics#input_generics()', '">"'],
\   'expr': 1,
\   'cursor': 'inner_tail',
\   'kind': ['add', 'replace'],
\   'action': ['add'],
\   'input': ['g']
\ },
\ {
\   'external': ['i<', "\<Plug>(textobj-functioncall-generics-a)"],
\   'noremap': 0,
\   'kind': ['delete', 'replace', 'query'],
\   'input': ['g']
\ },
\ ]
```
