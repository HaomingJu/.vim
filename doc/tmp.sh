
"在使用该配置之前可能需要执行以下命令来配置相关依赖环境
 "sudo apt-get install clang-format-3.8
" sudo apt-get install vim-nox
" sudo apt-get install vim-gui-common
 "sudo apt-get install silversearcher-ag
 "sudo pip install ici
" sudo apt-get install ctags
" sudo apt-get install cmake
" sudo apt-get install python-dev
" sudo apt-get install clang
" sudo pip3 install jedi


" 关于YouCompleteMe的编译注意事项
" cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/
" ./install.sh --clang-completer
" 同时在补全方面，如果要补全系统函数，建议在工程的CMakeLists.txt里面加入系统头文件所在路径，这样产生.ycm_extra_conf.py配置文件的时候即可自动将系统头文件路径加入进去，也可以补全系统函数.
" 例如：在工程CMakeLists.txt中加入'include_directories(/usr/include/c++/4.9)'
" 目前在.vim中加入了额外的配置文件.ycm_extra_conf.py,其中
"'-isystem',
"'/usr/include/c++/4.9',
" 添加完毕后可以找到iostream等

" 关于Clang-Format插件的注意事项
" clang-format命令的版本为3.8以上,且插件只识别命令"clang-format",并不识别"clang-format-3.8"
" 可以删除/usr/bin/clang-format，然后做软连接"ln -s /usr/bin/clang-format /usr/bin/clang-format-3.8"



===============================
"set listchars=tab:>-,trail:-,eol:<  " 定义显示空白字符的特殊可见字符
"set foldmethod=syntax
"highlight CursorLine   cterm=NONE ctermbg=grey ctermfg=NONE guibg=NONE guifg=NONE " 设置行高亮的颜色
"highlight CursorColumn cterm=NONE ctermbg=grey ctermfg=NONE guibg=NONE guifg=NONE " 设置列高亮的颜色
"ctermbg表示前景色,guibg表示gvim的前景色
"ctermfg表示背景色,guifg表示gvim的背景色
" 代码折叠
" 快捷键　zc 折叠
" 快捷键　zo 打开折叠
"set foldmethod=syntax


"Plug 'https://github.com/mbbill/echofunc.git'                          "EchoFunc插件：     用于显示当前函数特征
"Plug 'https://github.com/ryanoasis/vim-devicons.git'                   "devicons插件:      可以在Terminal上显示图标，在putty上不支持显示
"Plug 'https://github.com/vim-scripts/AutoClose.git'
"Plug 'https://github.com/HaomingJu/Auto-Pairs.git'                     "Auto-Pairs插件：   用于自动生成匹配的括号
"Plug 'https://github.com/honza/vim-snippets.git'                       "snippets插件：     配合UltiSnip插件
"Plug 'https://github.com/HaomingJu/ale.git'                            "ale插件：          用于代码的静态检查
"Plug 'https://github.com/HaomingJu/SimpylFold.git'
"Plug 'https://github.com/vim-airline/vim-airline-themes.git'
"Plug 'https://github.com/SirVer/ultisnips.git'                         "UltiSnip插件：     用于代码块管理
"Plug 'https://github.com/edkolev/tmuxline.vim.git'
"Plug 'https://github.com/shiftc/tmuxline.vim.git'
"Plug 'https://github.com/rkulla/pydiction.git'                          "pydiction插件：    用于自动补全python
"Plug 'https://github.com/vim-airline/vim-airline.git'                   "Airline插件:       优化下方状态栏

"Plug 'https://github.com/kana/vim-smartinput.git'
"Plug 'https://github.com/davidhalter/jedi-vim.git'
"Plug 'https://github.com/ayu-theme/ayu-vim.git'
"Plug 'https://github.com/altercation/vim-colors-solarized.git'
"Plug 'https://github.com/SirVer/ultisnips.git'
"Plug 'https://github.com/ap/vim-css-color.git'
"Plug 'https://github.com/mattn/emmet-vim.git'
"Plug 'https://github.com/ternjs/tern_for_vim.git'


" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
"set relativenumber number
"au FocusLost * :set norelativenumber number
"au FocusGained * :set relativenumber
" " 插入模式下用绝对行号, 普通模式下用相对
"autocmd InsertEnter * :set norelativenumber number
"autocmd InsertLeave * :set relativenumber"

" SimpylFold 插件配置
let g:SimpylFold_docstring_preview = 0
"au BufWInLeave * silent mkview
"au BufRead * silent loadview


"let NERDTreeMinimalUI=1        " 去掉NERDTree的帮助显示信息(实地感受，虽然美观了不少，但是少了上一级目录选项不方便)
"autocmd vimenter * NERDTree     " vim启动时，自动打开树形目录结构,默认位置是左侧(弃用，现通过F10键唤醒)


Plug 'https://github.com/mhinz/vim-startify.git'                       "startify插件:      用于更改vim起始页面，比较装逼


autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            "\ |   NERDTree
            \ |   wincmd w
            \ | endif


"echofunc 插件配置

"set statusline=%{EchoFuncGetStatusLine()}
"let g:EchoFuncLangsUsed=["cpp"]
"let g:EchoFuncShowOnStatus=1
"Plug 'https://github.com/suan/vim-instant-markdown.git'                 "markdown插件:      用于实时显示markdown效果



"markdown 插件配置
let g:instant_markdown_slow = 1             "减缓markdown的刷新频率
let g:instant_markdown_autostart = 1        "打开*.md文档自动显示预览



" UltiSnips 插件配置
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<Tab>"
 let g:UltiSnipsJumpForwardTrigger="<F3>"
 let g:UltiSnipsJumpBackwardTrigger="<F2>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetsDir = '~/.vim/plugged/vim-snippets/snippets'



"设置startify插件起始页面的相关颜色
let g:startify_files_number           = 20
let g:startify_list_order = [
            \ ['   My most recently used files in the current directory:'],
            \ 'dir',
            \ ['   My most recently used files:'],
            \ 'files',
            \ ['   These are my commands:'],
            \ 'commands']

let g:startify_custom_footer =
       \ ["", "   生命中曾经有过的所有灿烂,终究都要用寂寞来偿还.", "   All brilliant that has appeared in life will eventually be rapaid for lonely."]

let g:startify_enable_unsafe=1
hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240


Plug 'https://github.com/derekwyatt/vim-fswitch.git'                    "fswitch插件:       用来切换h文件和cpp文件

"hi Normal  ctermbg=none
"highlight Normal ctermfg=15 ctermbg=233

nmap <Leader>y :!echo --==<C-R><C-w>==-- ;ici <C-R><C-W><CR>    " 英文翻译


Plug 'morhetz/gruvbox'
