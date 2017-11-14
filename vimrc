" 2017年夏 南京
" 简易vim配置文件
" 请在.bashrc文件中添加一行 export TERM=xterm-256color
set encoding=utf-8
set t_Co=256
colorscheme molokai
let g:molokai_original=1
let g:rehash256=1

"启动语法检测
syntax enable
syntax on

" 其他设置
set showcmd                         " 显示输入的命令
set showmatch                       " 设置匹配模式，显示匹配的括号
set mouse=a                         " 使鼠标可用，可以通过鼠标点击来定位光标或者打开文件但是此时鼠标右键菜单不可用
set magic                           " 设置魔术
set number                          " 显示行号
set nocompatible                    " 去掉讨厌的有关vi一致性模式，避免以前的版本的一些漏洞和局限
set backspace=indent,eol,start      " 使退格键可以正常使用
set noswapfile                      " 禁止生成临时文件
set foldenable                      " 开启折叠选项
set autoread                        " 当文件被改动时自动载入
set completeopt=longest,menu        " 让Vim的补全才当行为与一般IDE一致
set wildmode=list:longest           " 在命令行中，按下Tab键，显示当前所有可能的命令
set softtabstop=4                   " 使用退格键，删除空格时，可以一次删除四个空格
set noshowmode                      " 关闭命令行中显示当前状态:NORMAL,INSERT,VISUAL
"
" 设置Tab相关设置
set tabstop=4                       " 设置制表符tab键的宽度为4空格
set expandtab                       " 用空格替代制表符
set list                            " 将空格,制表等空白字符都用特殊可见字符显示出来"
set listchars=tab:>-,trail:-        " 定义显示空白字符的特殊可见字符
set shiftwidth=4                    " 自动缩进使用4个空格"

" 设置当前缓冲区的搜索选项
set ignorecase                      " 忽略大小写
set smartcase                       " 开启智能大小写敏感
set hlsearch                        " 高亮搜索得到的结果
set incsearch                       " 开启递增搜索模式,随着键入待搜索文本，不断的进行搜索
set conceallevel=0
set laststatus=2

" 高亮光标所在行和列
set cursorline                      " 高亮光标所在行
set cursorcolumn                    " 高亮光标所在列
"ctermbg表示前景色,guibg表示gvim的前景色
"ctermfg表示背景色,guifg表示gvim的背景色
" 代码折叠
" 快捷键　zc 折叠
" 快捷键　zo 打开折叠


" 插件安装管理器要安装的插件列表
call plug#begin()
Plug 'https://github.com/HaomingJu/nerdtree.git'                    "NERDTree插件:      显示目录树形结构
Plug 'https://github.com/HaomingJu/vim-airline.git'                 "Airline插件:       优化下方状态栏
Plug 'https://github.com/HaomingJu/nerdcommenter.git'               "NERDCommenter插件：用于注释
Plug 'https://github.com/HaomingJu/CTags.git'                       "CTags插件：        用于跳转
Plug 'https://github.com/HaomingJu/taglist.vim.git'                 "TagList插件：      用于显示函数列表
Plug 'https://github.com/HaomingJu/ctrlp.vim.git'                   "CtrlP插件:         用于文件搜索，支持模糊查找
Plug 'https://github.com/HaomingJu/ag.vim.git'                      "Ag插件:            用于工程内全局文本搜索，感觉比EasyGrep好用
Plug 'https://github.com/HaomingJu/Auto-Pairs.git'                  "Auto-Pairs插件：   用于自动生成匹配的括号
Plug 'https://github.com/HaomingJu/vim-Mark.git'                    "mark插件:          用于高亮某些关键字
Plug 'https://github.com/HaomingJu/vim-ctrlspace.git'               "ctrlspace插件:     用于管理缓冲区
Plug 'https://github.com/easymotion/vim-easymotion.git'
call plug#end()


"NERDTree 插件配置
"autocmd vimenter * NERDTree     " vim启动时，自动打开树形目录结构,默认位置是左侧(弃用，现通过F10键唤醒)
let NERDTreeWinSize=31          " 设置NERDTree界面宽度为31
let NERDTreeChDirMode=2         " 可修改root路径
let NERDTreeShowBookmarks=1     " 显示Bookmarks标签

"TlistToggle 插件配置
autocmd vimenter * TlistToggle " vim启动时，自动打开函数结构图(弃用，现通过F12键唤醒)
let Tlist_Use_Right_Window=1    " 在右侧显示
let Tlist_WinWidth=60           " 界面宽度为60
let Tlist_Show_One_File=1       " 只显示当前缓冲区的函数结构
let Tlist_Auto_Highlight_Tag=1  " 自动高亮当前所在函数
let Tlist_Auto_Update=1         " 只显示当前缓冲区的内容
let Tlist_Compact_Format=1
let Tlist_Process_File_Always=1 " 实时更替tags

"CtrlSpace 插件配置
set nocompatible
set hidden


" 修改了leader键盘
let mapleader="\<Space>"
" 快捷键位绑定
nmap <C-H> <C-W>h
" 窗口间光标跳转---向下
nmap <C-J> <C-W>j
" 窗口间光标跳转---向上
nmap <C-K> <C-W>k
" 窗口间光标跳转---向右
nmap <C-L> <C-W>l
" 在Visual模式下，组合键Ctrl+c可以将选中的内容复制到系统剪切板中
vmap <C-c> "+y

" 全局搜索
map <C-F> :Ag 
" 搜索增强
nmap <Leader>f :Ag <C-R><C-W><CR>
" 高亮光标所在的单词
nmap m gd
" 退回到终端界面
nmap fq <Esc><C-z><CR>
" 快捷注释
map ci <Leader>ci

map <F10> :NERDTreeToggle<CR>
" 开闭函数结构窗口
map <F12> :TlistToggle<CR>

" 英语查询单词
map <Leader>w :w<CR>
map <Leader>a :vsplit<CR>
map <Leader>h q:
nmap <Leader>q :q<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author        :       Haoming.Ju                      "
" Email         :       juhaoming@126.com               "
" Blog Address  :       http://blog.csdn.net/i_am_tom   "
" Last modify   :       2017/10/13                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

