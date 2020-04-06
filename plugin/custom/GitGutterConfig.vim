"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"GitGutter插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
let g:gitgutter_async = 1
let g:gitgutter_sign_added = 'ad'
let g:gitgutter_sign_modified = 'mo'
let g:gitgutter_sign_removed = 'rm'
let g:gitgutter_sign_removed_first_line = 'r^'
let g:gitgutter_sign_modified_removed = 'rm'
let g:gitgutter_override_sign_column_highlight = 1
highlight GitGutterAdd term=underline ctermfg=Green
highlight GitGutterChange term=underline ctermfg=Blue
highlight GitGutterDelete term=underline ctermfg=Yellow
highlight GitGutterChangeDelete term=underline ctermfg=Yellow
highlight GitGutterAddLine term=bold
highlight GitGutterChangeLine term=bold
highlight GitGutterDeleteLine term=bold
highlight GitGutterChangeDeleteLine term=bold
