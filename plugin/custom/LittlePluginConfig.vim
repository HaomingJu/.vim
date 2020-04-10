
"tagbar插件配置
let g:tagbar_left = 1                                                   " 使tarbar栏目在左侧
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_sort = 0
let g:tagbar_show_visibility = 1
highlight  TagbarHighlight guifg=Blue ctermfg=Blue

"vim-json插件配置
let g:vim_json_syntax_conceal = 0

" 设置RainBow插件
let g:rainbow_active = 1

" 设置ctrl-space插件
let g:CtrlSpaceUseUnicode = 0 "设置插件使用ASCII编码方式

" echodoc插件配置
let g:echodoc_enable_at_startup = 1
set noshowmode                      " 关闭命令行中显示当前状态:NORMAL,INSERT,VISUAL

" EasyMotion颜色设置
hi EasyMotionTarget2First ctermbg=green ctermfg=white
hi EasyMotionTarget ctermbg=red ctermfg=white

