let mapleader="\<Space>"
nmap <C-H> :wincmd h<CR>
nmap <C-J> :wincmd j<CR>
nmap <C-K> :wincmd k<CR>
nmap <C-L> :wincmd l<CR>

map <Leader>w :w<CR>                    " 保存文件
map <Leader>s :vsplit<CR>               " 窗口竖向分割
nmap <Leader>q :qa<CR>                  " 不保存退出文件
vmap <Leader>y "+y                      " 复制选中字段至剪贴板
nmap <Leader>f :CtrlSF <C-R><C-W><CR>   " 搜索增强
"map <Leader>e :CocCommand snippets.editSnippets<CR>
map <Leader>e :CocDiagnostics<CR>




" 功能键系列
map <F3> :Gblame<CR>              " 开关Git diff
map <F4> :GitGutterToggle<CR>     " TODO
map <F9> :CCtoggle<CR>            " TODO
map <F12> :TagbarToggle<CR>       " 开闭函数结构窗口
map <F10> :NERDTreeToggle<CR>     " 开闭目录树窗口


vmap <C-c> "+y                        " 在Visual模式下，组合键Ctrl+c可以将选中的内容复制到系统剪切板中
nmap <M-m> :set fileformat=unix<CR>   " 将文件格式置为unix
nmap m gd                             " 高亮光标所在的单词
nmap fq <Esc><C-z><CR>                " 退回到终端界面
map ci <Leader>ci                     " 快捷注释

nnoremap H gT
nnoremap L gt
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

map Q <Nop>
