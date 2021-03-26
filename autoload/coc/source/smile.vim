function! coc#source#smile#init() abort
  return {
        \ 'priority': 9,
        \ 'shortcut': 'Email'
        \}
endfunction

function! coc#source#smile#complete(opt, cb) abort
  let items = ['auto&', 'const auto&']
  call a:cb(items)
endfunction
