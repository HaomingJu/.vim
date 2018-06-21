"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author        :       Haoming.Ju                      "
" Email         :       juhaoming@126.com               "
" Last modify   :       2018/04/24                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8
set t_Co=256

"启动语法检测
syntax enable
syntax on

"使用molakai配色方案
colorscheme molokai
let g:molokai_original=1
let g:rehash256=1



" 其他设置
set showcmd                         " 显示输入的命令
set showmatch                       " 设置匹配模式，显示匹配的括号
set mouse=a                         " 使鼠标可用，可以通过鼠标点击来定位光标或者打开文件但是此时鼠标右键菜单不可用
set magic                           " 设置魔术
"set number                         " 显示行号
set relativenumber                  " 显示相对行号
set nocompatible                    " 去掉讨厌的有关vi一致性模式，避免以前的版本的一些漏洞和局限
set backspace=indent,eol,start      " 使退格键可以正常使用
set noswapfile                      " 禁止生成临时文件
set foldenable                      " 开启折叠选项
set autoread                        " 当文件被改动时自动载入
set completeopt=longest,menu        " 让Vim的补全才当行为与一般IDE一致
set wildmenu
set wildmode=list:full              " 在命令行中，按下Tab键，显示当前所有可能的命令
set softtabstop=4                   " 使用退格键，删除空格时，可以一次删除四个空格
set fileformat=unix

" 设置Tab相关设置
set tabstop=4                       " 设置制表符tab键的宽度为4空格
set expandtab                       " 用空格替代制表符
set list                            " 将空格,制表等空白字符都用特殊可见字符显示出来"
set listchars=tab:>-,trail:-        " 定义显示空白字符的特殊可见字符
set shiftwidth=4                    " 自动缩进使用4个空格"

" 在上下移动光标时，光标上方或者下方至少会保留显示的行数
set scrolloff=10

" 设置当前缓冲区的搜索选项
set ignorecase                      " 忽略大小写
set smartcase                       " 开启智能大小写敏感
set hlsearch                        " 高亮搜索得到的结果
set incsearch                       " 开启递增搜索模式,随着键入待搜索文本，不断的进行搜索
set conceallevel=0
set laststatus=2
hi Normal  ctermbg=none

"修改vimrc文件之后，自动加载
autocmd! bufwritepost .vimrc source %

" 高亮光标所在行和列
set cursorline                      " 高亮光标所在行
set cursorcolumn                    " 高亮光标所在列

" 插件安装管理器要安装的插件列表
call plug#begin()
Plug 'https://github.com/scrooloose/nerdtree.git'                       "NERDTree插件:      显示目录树形结构
Plug 'https://github.com/terryma/vim-multiple-cursors.git'              "Mult-Cursors插件:  用于多光标输入操作
Plug 'https://github.com/scrooloose/nerdcommenter.git'                  "NERDCommenter插件：用于注释
Plug 'https://github.com/SublimeText/CTags.git'                         "CTags插件：        用于跳转
Plug 'https://github.com/majutsushi/tagbar.git'                         "tagbar插件         用于显示函数列表
Plug 'https://github.com/kien/ctrlp.vim.git'                            "CtrlP插件:         用于文件搜索，支持模糊查找
Plug 'https://github.com/rking/ag.vim.git'                              "Ag插件:            用于工程内全局文本搜索，感觉比EasyGrep好用
Plug 'https://github.com/rdnetto/YCM-Generator.git'                     "YCM-Generator插件：用于生成YCM文件，与YCM配合使用
Plug 'https://github.com/elzr/vim-json.git'                             "vim-json插件:      用于更好的显示json文件
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/dyng/ctrlsf.vim.git'                           "ctrlsf插件:        更好用的代码查找工具
Plug 'https://github.com/Valloric/YouCompleteMe.git'                    "YCM插件：          用于自动补全
"Plug 'https://github.com/Shougo/deoplete.nvim.git'
"Plug 'https://github.com/Rip-Rip/clang_complete.git'
"Plug 'https://github.com/roxma/nvim-yarp'
"Plug 'https://github.com/roxma/vim-hug-neovim-rpc'
"Plug 'https://github.com/zchee/deoplete-clang.git'

Plug 'https://github.com/rhysd/vim-clang-format.git'                    "Clang-Format插件： 用于格式化代码风格
Plug 'https://github.com/kana/vim-smartinput.git'
Plug 'https://github.com/Yggdroot/indentLine.git'                       "indentLine插件:    用于连接for的首和尾
Plug 'https://github.com/HaomingJu/vim-Mark.git'                        "mark插件:          用于高亮某些关键字
"Plug 'https://github.com/tpope/vim-fugitive.git'                        "fugitive插件:      git工具，用于查看两文件差异(比gitgutter好用)
"Plug 'https://github.com/airblade/vim-gitgutter.git'                    "gitgutter插件：    用于显示Git diff等
Plug 'https://github.com/vim-ctrlspace/vim-ctrlspace.git'               "ctrlspace插件:     用于管理缓冲区
"Plug 'https://github.com/HaomingJu/vim-ChineseHelpDocument.git'         "Chinese-help插件： 用于替换掉原有的英文文档
Plug 'https://github.com/davidhalter/jedi-vim.git'                      "jedi插件:          用于补全Python, 非常好用
"Plug 'https://github.com/tpope/vim-projectionist.git'                   "projectionist插件: 用于头文件与实现文件之间转跳
Plug 'https://github.com/Shougo/echodoc.vim.git'                        "echodoc插件:       用于显示函数参数列表, 不支持YCM, 目前只支持写Python
Plug 'https://github.com/Yggdroot/LeaderF.git'                          "LeaderF插件:       用于模糊查找
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'          "还未探究
Plug 'https://github.com/ayu-theme/ayu-vim.git'


call plug#end()

"NERDTree 插件配置
let NERDTreeWinPos='right'
let NERDTreeWinSize=31                                                  " 设置NERDTree界面宽度为31
let NERDTreeChDirMode=2                                                 " 可修改root路径
let NERDTreeShowBookmarks=1                                             " 显示Bookmarks标签
let NERDTreeStatusline='NERDTree'                                       " 显示Bookmarks标签
"tarbar插件配置
let g:tagbar_left = 1                                                   " 使tarbar栏目在左侧
"YouCompleteMe 插件配置
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_confirm_extra_conf=0                                          " 打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1                        " 使用ctags生成的tags文件
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui=0
"CtrlSpace 插件配置
set nocompatible
set hidden
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
            \ "ReflowComments" : "false",
            \ "SpaceAfterCStyleCast" : "true",
            \ "ColumnLimit" : 120,
            \ "IndentWrappedFunctionNames" : "true",
            \ "AccessModifierOffset" : -2,
            \ "AllowShortFunctionsOnASingleLine" : "Empty",
            \ "PointerAlignment" : "Left",
            \ "SpaceBeforeParens" : "Never"}

"GitGutter插件配置
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

"vim-json插件配置
let g:vim_json_syntax_conceal = 0

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
inoremap <C-e> <esc>

" 全局搜索
map <C-F> :Ag 
" 搜索增强
nmap <Leader>f :CtrlSF <C-R><C-W><CR>
" 高亮光标所在的单词
nmap m gd
" 退回到终端界面
nmap fq <Esc><C-z><CR>
" 快捷注释
map ci <Leader>ci

" 开闭git blame窗口, 甩锅利器
map <F3> :Gblame<CR>
" 开关Git diff
map <F4> :GitGutterToggle<CR>
" 格式化代码风格为Allman。谷歌风格程序狗可以注释掉了:)
map <F7> :ClangFormat<CR>

" 开闭目录树窗口
map <F10> :NERDTreeToggle<CR>
" 开闭函数结构窗口
map <F12> :TagbarToggle<CR>
map <F9> :CCtoggle<CR>

" 英语查询单词
map <Leader>w :w<CR>
map <Leader>s :vsplit<CR>
map <Leader>h q:
nmap <Leader>q :qa<CR>
nmap <Leader>y :!echo --==<C-R><C-w>==-- ;ici <C-R><C-W><CR>
vmap <Leader>y "+y
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <Leader>nm :noh<CR>
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
" 恢复上次文件打开位置
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif"'")"'")")'"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" 设置tagbar插件
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_sort = 0
let g:tagbar_show_visibility = 1
highlight  TagbarHighlight guifg=Blue ctermfg=Blue

" 设置ctrl-space插件
let g:CtrlSpaceUseUnicode = 0 "设置插件使用ASCII编码方式

" 设置LeaderF插件
noremap <M-p> :LeaderfFile<CR>
noremap <M-f> :LeaderfFunction<CR>
noremap <M-m> :LeaderfMru<CR>
noremap <M-h> :LeaderfHistorySearch<CR>
let g:Lf_WindowHeight=0.3
let g:Lf_StlColorscheme = 'powerline'

set noshowmode                      " 关闭命令行中显示当前状态:NORMAL,INSERT,VISUAL
let g:echodoc_enable_at_startup = 1

" 函数区
" 使得vim支持Alt组合键
function! Terminal_MetaMode(mode)
    if has('nvim') || has('gui_running')
        return
    endif
    function! s:metacode(mode, key)
        if a:mode == 0
            exec "set <M-".a:key.">=\e".a:key
        else
            exec "set <M-".a:key.">=\e]{0}".a:key."~"
        endif
    endfunc
    for i in range(10)
        call s:metacode(a:mode, nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
        call s:metacode(a:mode, nr2char(char2nr('a') + i))
        call s:metacode(a:mode, nr2char(char2nr('A') + i))
    endfor
    if a:mode != 0
        for c in [',', '.', '/', ';', '[', ']', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    else
        for c in [',', '.', '/', ';', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    endif
    set ttimeout
    if $TMUX != ''
        set ttimeoutlen=30
    elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
        set ttimeoutlen=30
    endif
endfunc

call Terminal_MetaMode(0)


