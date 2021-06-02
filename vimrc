"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author        :       Haoming.Ju                      "
" Email         :       juhaoming@126.com               "
" Last modify   :       2020-12-16                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 包含其他函数

"启动语法检测
syntax enable
syntax on
filetype plugin indent on


" 其他设置
set showcmd                           " 显示输入的命令
set showmatch                         " 设置匹配模式，显示匹配的括号
set mouse=a                           " 使鼠标可用
set magic                             " 设置魔术
set number                            " 显示行号
set relativenumber                    " 显示相对行号
set nocompatible                      " 去掉讨厌的有关vi一致性模式，避免以前的版本的一些漏洞和局限
set backspace=indent,eol,start        " 使退格键可以正常使用
set noswapfile                        " 禁止生成临时文件
set foldenable                        " 开启折叠选项
set autoread                          " 当文件被改动时自动载入
set completeopt=longest,menu          " 让Vim的补全才当行为与一般IDE一致
set wildmenu
set wildmode=list:full                " 在命令行中，按下Tab键，显示当前所有可能的命令
set softtabstop=4                     " 使用退格键，删除空格时，可以一次删除四个空格
set fileformat=unix
set updatetime=300

" 设置Tab相关设置
set tabstop=4                         " 设置制表符tab键的宽度为4空格
set expandtab                         " 用空格替代制表符
set list                              " 将空格,制表等空白字符都用特殊可见字符显示出来"
set listchars=tab:>-,trail:-          " 定义显示空白字符的特殊可见字符
set shiftwidth=4                      " 自动缩进使用4个空格"
"set scrolloff=10                      " 在上下移动光标时，光标上方或者下方至少会保留显示的行数

" 设置当前缓冲区的搜索选项
set ignorecase                        " 忽略大小写
set smartcase                         " 开启智能大小写敏感
set hlsearch                          " 高亮搜索得到的结果
set incsearch                         " 开启递增搜索模式,随着键入待搜索文本，不断的进行搜索
set conceallevel=0
set laststatus=2
set nocompatible
set hidden


" 高亮光标所在行和列
set cursorline                        " 高亮光标所在行
set cursorcolumn                      " 高亮光标所在列
set nobackup
set nowritebackup

packadd termdebug

" 插件安装管理器要安装的插件列表 Base URL: https://github.com
call plug#begin()
Plug 'scrooloose/nerdtree'            "NERDTree插件:      显示目录树形结构
Plug 'scrooloose/nerdcommenter'       "NERDCommenter插件: 用于注释
Plug 'majutsushi/tagbar'              "tagbar插件         用于显示函数列表
Plug 'SublimeText/CTags'              "CTags插件:         用于跳转
Plug 'rking/ag.vim'                   "Ag插件:            用于工程内全局文本搜索
Plug 'dyng/ctrlsf.vim'                "ctrlsf插件:        更好用的代码查找工具
Plug 'Yggdroot/LeaderF', {'do': ':LeaderfInstallCExtension' }   "LeaderF插件:       用于模糊查找
Plug 'Yggdroot/indentLine'            "indentLine插件:    用于连接for的首和尾
Plug 'elzr/vim-json'                  "vim-json插件:      用于更好的显示json文件
Plug 'easymotion/vim-easymotion'
Plug 'luochen1990/rainbow'            "彩虹括号
Plug 'itchyny/lightline.vim'
Plug 'rhysd/vim-clang-format'         "Clang-Format插件： 用于格式化代码风格
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-speeddating'          " 强化数字自增/自减
Plug 'ekalinin/Dockerfile.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/vim-cursorword'
Plug 'ryanoasis/vim-devicons', {'branch': 'master'}
Plug 'mzlogin/vim-markdown-toc'
Plug 'jackguo380/vim-lsp-cxx-highlight', {'branch': 'master'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug 'puremourning/vimspector'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-ctrlspace/vim-ctrlspace'


call plug#end()

:source ~/.vim/plugin/custom/keymap.vim
:source ~/.vim/plugin/custom/AutoCmd.vim
:source ~/.vim/plugin/custom/NERDTreeConfig.vim
:source ~/.vim/plugin/custom/LittlePluginConfig.vim
:source ~/.vim/plugin/custom/GitGutterConfig.vim
:source ~/.vim/plugin/custom/CocConfig.vim
:source ~/.vim/plugin/custom/CppLightConfig.vim
:source ~/.vim/plugin/custom/LeaderFConfig.vim
:source ~/.vim/plugin/custom/CommonConfig.vim
:source ~/.vim/plugin/custom/RainBow.vim
:source ~/.vim/plugin/custom/Functions.vim
:source ~/.vim/plugin/custom/CodeStyle.vim
:source ~/.vim/plugin/custom/markdown.vim


"let g:vimspector_enable_mappings = 'HUMAN'


call SwitchColor()
call Terminal_MetaMode(0)
