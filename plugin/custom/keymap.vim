let mapleader="\<Space>"    " 修改了leader键盘
nmap <C-H> <C-W>h           " 窗口间光标跳转---向下
nmap <C-J> <C-W>j           " 窗口间光标跳转---向上
nmap <C-K> <C-W>k           " 窗口间光标跳转---向右
nmap <C-L> <C-W>l           " 窗口间光标跳转---向左

map <Leader>w :w<CR>                    " 保存文件
map <Leader>s :vsplit<CR>               " 窗口竖向分割
nmap <Leader>q :qa<CR>                  " 不保存退出文件
vmap <Leader>y "+y                      " 复制选中字段至剪贴板
nmap <Leader>f :CtrlSF <C-R><C-W><CR>   " 搜索增强


nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>     " YCM: 跳转至定义处


" 功能键系列
map <F3> :Gblame<CR>              " 开关Git diff
map <F4> :GitGutterToggle<CR>     " TODO
map <F9> :CCtoggle<CR>            " TODO
map <F10> :NERDTreeToggle<CR>     " 开闭目录树窗口
map <F12> :TagbarToggle<CR>       " 开闭函数结构窗口


vmap <C-c> "+y                        " 在Visual模式下，组合键Ctrl+c可以将选中的内容复制到系统剪切板中
nmap <M-m> :set fileformat=unix<CR>   " 将文件格式置为unix
nmap m gd                             " 高亮光标所在的单词
nmap fq <Esc><C-z><CR>                " 退回到终端界面
map ci <Leader>ci                     " 快捷注释
