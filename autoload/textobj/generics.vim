function! textobj#generics#input_generics() abort
  let genericsname = input('Generics Name: ', '')
  if genericsname ==# ''
    throw 'OperatorSandwichGenericsCancel'
  endif
  return genericsname . '<'
endfunction
