"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe 插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_confirm_extra_conf=0                              " 打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 0            " 使用ctags生成的tags文件
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui=0
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_insertion=1
"let g:ycm_autoclose_preview_window_after_completion=1
