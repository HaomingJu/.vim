" 2017年夏 南京

" 在使用该配置之前可能需要执行以下命令来配置相关依赖环境
 "sudo apt-get install clang-format-3.8
" sudo apt-get install vim-nox
" sudo apt-get install vim-gui-common
" sudo apt-get install silversearcher-ag
" sudo pip install ici
" sudo apt-get install ctags
" sudo apt-get install cmake
" sudo apt-get install python-dev
" sudo apt-get install clang
 

" 关于YouCompleteMe的编译注意事项
" cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/
" ./install.sh --clang-completer
" 同时在补全方面，如果要补全系统函数，建议在工程的CMakeLists.txt里面加入系统头文件所在路径，这样产生.ycm_extra_conf.py配置文件的时候即可自动将系统头文件路径加入进去，也可以补全系统函数.
" 例如：在工程CMakeLists.txt中加入'include_directories(/usr/include/c++/4.9)'

" 关于Clang-Format插件的注意事项
" clang-format命令的版本为3.8以上,且插件只识别命令"clang-format",并不识别"clang-format-3.8"
" 可以删除/usr/bin/clang-format，然后做软连接"ln -s /usr/bin/clang-format /usr/bin/clang-format-3.8"




"启动语法检测
syntax enable
syntax on

" 使用molakai配色方案
colorscheme molokai
let g:molokai_original=1
let g:rehash256=1

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
"set scrollbind

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


set tags=./tags,tags,/usr/include/c++/4.9/tags
"set scrollbind                      "用于vimdiff,目前我自己默认关闭


" 高亮光标所在行和列
set cursorline                      " 高亮光标所在行
set cursorcolumn                    " 高亮光标所在列
"highlight CursorLine   cterm=NONE ctermbg=grey ctermfg=NONE guibg=NONE guifg=NONE " 设置行高亮的颜色
"highlight CursorColumn cterm=NONE ctermbg=grey ctermfg=NONE guibg=NONE guifg=NONE " 设置列高亮的颜色

"ctermbg表示前景色,guibg表示gvim的前景色
"ctermfg表示背景色,guifg表示gvim的背景色


"highlight VertSplit ctermbg=0 ctermfg=0

" 插件安装管理器要安装的插件列表
call plug#begin()
Plug 'https://github.com/HaomingJu/nerdtree.git'                    "NERDTree插件:      显示目录树形结构
Plug 'https://github.com/HaomingJu/vim-airline.git'                 "Airline插件:       优化下方状态栏
Plug 'https://github.com/HaomingJu/vim-multiple-cursors.git'        "Mult-Cursors插件:  用于多光标输入操作
Plug 'https://github.com/HaomingJu/nerdcommenter.git'               "NERDCommenter插件：用于注释
Plug 'https://github.com/HaomingJu/CTags.git'                       "CTags插件：        用于跳转
Plug 'https://github.com/HaomingJu/taglist.vim.git'                 "TagList插件：      用于显示函数列表
Plug 'https://github.com/HaomingJu/YouCompleteMe.git'               "YCM插件：          用于自动补全
Plug 'https://github.com/HaomingJu/ctrlp.vim.git'                   "CtrlP插件:         用于文件搜索，支持模糊查找
Plug 'https://github.com/HaomingJu/ag.vim.git'                      "Ag插件:            用于工程内全局文本搜索，感觉比EasyGrep好用
Plug 'https://github.com/HaomingJu/EasyGrep.git'                    "EasyGrep插件：     用于文本搜索
Plug 'https://github.com/HaomingJu/echofunc.git'                    "EchoFunc插件：     用于显示当前函数特征
Plug 'https://github.com/HaomingJu/vim-ChineseHelpDocument.git'     "Chinese-help插件： 用于替换掉原有的英文文档
Plug 'https://github.com/HaomingJu/vim-clang-format.git'            "Clang-Format插件： 用于格式化代码风格
Plug 'https://github.com/HaomingJu/ale.git'                         "ale插件：          用于代码的静态检查
Plug 'https://github.com/HaomingJu/YCM-Generator.git'               "YCM-Generator插件：用于生成YCM文件，与YCM配合使用
Plug 'https://github.com/HaomingJu/bufexplorer.git'                 "BufExplorer插件：  用于显示缓冲区
Plug 'https://github.com/HaomingJu/conque-term.git'                 "Conque-term插件:   用于在VIM中开辟内置的命令行窗口
Plug 'https://github.com/HaomingJu/Auto-Pairs.git'                  "Auto-Pairs插件：   用于自动生成匹配的括号
Plug 'https://github.com/HaomingJu/pydiction.git'                   "pydiction插件：    用于自动补全python
Plug 'https://github.com/HaomingJu/vim-gitgutter.git'               "gitgutter插件：    用于显示Git diff等
Plug 'https://github.com/HaomingJu/indentLine.git'                  "indentLine插件:    用于连接for的首和尾
Plug 'https://github.com/HaomingJu/vim-Mark.git'
"Plug 'https://github.com/HaomingJu/color_coded.git'                 "color_coded插件：  用于色彩化代码，增强可视化
"Plug 'https://github.com/HaomingJu/vim-signify.git'
call plug#end()


"NERDTree 插件配置
autocmd vimenter * NERDTree     " vim启动时，自动打开树形目录结构,默认位置是左侧
let NERDTreeWinSize=31          " 设置NERDTree界面宽度为31
let NERDTreeChDirMode=2         " 可修改root路径
let NERDTreeShowBookmarks=1     " 显示Bookmarks标签
"let NERDTreeMinimalUI=1        " 去掉NERDTree的帮助显示信息(实地感受，虽然美观了不少，但是少了上一级目录选项不方便)

"TlistToggle 插件配置
"autocmd vimenter * TlistToggle " vim启动时，自动打开函数结构图(弃用，现通过F12键唤醒)
let Tlist_Use_Right_Window=1    " 在右侧显示
let Tlist_WinWidth=60           " 界面宽度为60
let Tlist_Show_One_File=1       " 只显示当前缓冲区的函数结构
let Tlist_Auto_Highlight_Tag=1  " 自动高亮当前所在函数
let Tlist_Auto_Update=1         " 只显示当前缓冲区的内容
let Tlist_Compact_Format=1
let Tlist_Process_File_Always=1 " 实时更替tags

"YouCompleteMe 插件配置
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_confirm_extra_conf=0                          " 打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1        " 使用ctags生成的tags文件

"echofunc 插件配置
"set statusline+=%{EchoFuncGetStatusLine()}
"let g:EchoFuncShowOnStatus=1

"Pydiction 插件配置
let g:pydiction_location = '/home/haoming/.vim/plugged/pydiction/complete-dict'

"Clang-Format 插件配置
" 配置的相关选项参照网址 "http://clang.llvm.org/docs/ClangFormatStyleOptions.html#"
let g:clang_format#style_options = {
            \ "BasedOnStyle" : "Google",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Allman",
            \ "AlignAfterOpenBracket" : "Align",
            \ "SpaceBeforeAssignmentOperators" : "true",
            \ "AlignOperands" : "false",
            \ "AlignTrailingComments" : "true",
            \ "AllowAllParametersOfDeclarationOnNextLine" : "false",
            \ "AllowShortCaseLabelsOnASingleLine" : "false",
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortLoopsOnASingleLine" : "false",
            \ "AlwaysBreakTemplateDeclarations" : "false",
            \ "BinPackArguments" : "false",
            \ "BinPackParameters" : "false",
            \ "BreakBeforeBinaryOperators" : "None",
            \ "BreakConstructorInitializersBeforeComma" : "true",
            \ "MaxEmptyLinesToKeep" : 2,
            \ "PointerAlignment" : "Left",
            \ "ReflowComments" : "false",
            \ "SpaceAfterCStyleCast" : "true",
            \ "ColumnLimit" : 120,
            \ "IndentWrappedFunctionNames" : "true",
            \ "AccessModifierOffset" : -2,
            \ "SpaceBeforeParens" : "Never"}

"BufExplorer 插件配置
let g:bufExplorerDefaultHelp=0

"GitGutter插件配置
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
let g:gitgutter_async = 1
let g:gitgutter_sign_added = 'ad'
let g:gitgutter_sign_modified = 'mo'
let g:gitgutter_sign_removed = 'rm'
let g:gitgutter_sign_removed_first_line = 'r^'
let g:gitgutter_sign_modified_removed = 'mr'
let g:gitgutter_override_sign_column_highlight = 1
highlight GitGutterAdd term=underline ctermfg=Green
highlight GitGutterChange term=underline ctermfg=Blue
highlight GitGutterDelete term=underline ctermfg=Yellow
highlight GitGutterChangeDelete term=underline ctermfg=Yellow
highlight GitGutterAddLine term=bold
highlight GitGutterChangeLine term=bold
highlight GitGutterDeleteLine term=bold
highlight GitGutterChangeDeleteLine term=bold

" 快捷键位绑定
" 窗口间光标跳转---向左
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

" 高亮光标所在的单词
nmap m \m
map ci \ci
nmap fq <Esc><C-z><CR>

" 跳到下一个缓冲区
map <F3> :bn<CR>
" 开关Git diff
map <F4> :GitGutterToggle<CR>
" 格式化代码风格为Allman。谷歌风格程序狗可以注释掉了:)
map <F7> :ClangFormat<CR>
" 以列表的形式列出所有缓冲区文件,可以很方便的跳到任何一个打开过的文件
map <F9> :BufExplorer<CR>
" 开闭目录树窗口
map <F10> :NERDTreeToggle<CR>
" 开闭函数结构窗口
map <F12> :TlistToggle<CR>
" 英语查询单词
nmap <Leader>y :!echo --==<C-R><C-w>==-- ;ici <C-R><C-W><CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author        :       Haoming.Ju                      "
" Email         :       juhaoming@126.com               "
" Blog Address  :       http://blog.csdn.net/i_am_tom   "
" Last modify   :       2017/07/22                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

