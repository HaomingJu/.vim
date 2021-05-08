"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree 插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd vimenter * NERDTree
let NERDTreeIgnore=['^output','^install','^build', '^output_x86_64$', 'pyc$', '__init__.py', 'compile_commands.json', '.+tar.gz', '.bag$', 'cmake-build-debug', 'cmake-build-release']
let NERDTreeWinPos='right'
let NERDTreeWinSize=23                                                  " 设置NERDTree界面宽度为31
let NERDTreeChDirMode=2                                                 " 可修改root路径
let NERDTreeShowBookmarks=1                                             " 显示Bookmarks标签
let NERDTreeStatusline='NERDTree'                                       " 显示Bookmarks标签
let NERDTreeMinimalUI=1                                                 " 精简化窗口
