"Author : Haoming.Ju
"You maybe need to run commands list
"sudo apt-get install clang-format-3.8
"sudo apt-get install silversearcher-ag
"sudo pip install ici
"sudo apt-get install ctags
"sudo apt-get install cmake
"sudo apt-get install python-dev
"sudo apt-get install clang
"cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/
"./install.sh --clang-completer
"Finally : you maybe need to fix value : g:ycm_global_ycm_extra_conf

"Map Key Instrution
"<F2>   移动光标到当前行行首
"<F3>   移动光标到当前行行尾
"<F7>   格式化代码
"<F10>  开闭NERDTree目录窗口
"<F11>  开闭全屏
"<F12>  开闭函数结构窗口
"<C-f>  调用EasyGrep,进行搜索
"<C-p>  调用CTRLP，进行文件搜索
"<C-h>  光标窗口间移动，左移
"<C-j>  光标窗口间移动，下移
"<C-k>  光标窗口间移动，上移
"<C-l>  光标窗口间移动，右移
"<C-s>  未定义，为Terminal快捷键，冻结窗口
"<C-q>  未定义，为Terminal快捷键，解冻窗口
"fw     文件写入
"fq     如果文件无改动，返回Terminal前端。fg可返回vim窗口


if has("syntax")
  syntax on
endif

set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set mouse=a         " Enable mouse usage (all modes)
set number          " Enable show line number   
set nocompatible    " no vi model
set backspace=indent,eol,start
set tabstop=4
set expandtab
set list
set listchars=tab:>-,trail:-  
set shiftwidth=4
set noswapfile
set foldenable
"set foldmethod=manual
"set foldmethod=syntax
"set foldmethod=indent
set hlsearch
set incsearch
set cursorline      " highlight the line that cursor be at      
set cursorcolumn    " highlight the colum that cursor be at 
set autoread
set clipboard+=unnamed


highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight VertSplit ctermbg=0 ctermfg=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""Plugin Manager
call plug#begin()
Plug 'https://github.com/HaomingJu/nerdtree.git'
Plug 'https://github.com/HaomingJu/vim-airline.git'
Plug 'https://github.com/HaomingJu/vim-multiple-cursors.git'
Plug 'https://github.com/HaomingJu/nerdcommenter.git'
Plug 'https://github.com/HaomingJu/CTags.git'
Plug 'https://github.com/HaomingJu/taglist.vim.git'
Plug 'https://github.com/HaomingJu/YouCompleteMe.git'
Plug 'https://github.com/HaomingJu/ctrlp.vim.git'
Plug 'https://github.com/HaomingJu/ag.vim.git'
Plug 'https://github.com/HaomingJu/EasyGrep.git'
Plug 'https://github.com/HaomingJu/echofunc.git'
Plug 'https://github.com/HaomingJu/vim-ChineseHelpDocument.git'
Plug 'https://github.com/HaomingJu/vim-clang-format.git'
Plug 'https://github.com/HaomingJu/ale.git'
Plug 'https://github.com/HaomingJu/YCM-Generator.git'
Plug 'https://github.com/HaomingJu/bufexplorer.git'
Plug 'https://github.com/HaomingJu/conque-term.git'
Plug 'https://github.com/HaomingJu/Auto-Pairs.git'
Plug 'https://github.com/HaomingJu/pydiction.git'
Plug 'https://github.com/HaomingJu/color_coded.git'
call plug#end()



"NERDTree Configure
autocmd vimenter * NERDTree
let NERDTreeWinSize=31

"TlistToggle Configure
"autocmd vimenter * TlistToggle
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=60
let Tlist_Show_One_File=1
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Compact_Format=1

"YouCompleteMe Configure
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_autoclose_preview_window_after_insertion=1
let g:pydiction_location = '/home/haoming/.vim/plugged/pydiction/complete-dict'

"Clang-Format
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

"Exploter Configure
let g:bufExplorerDefaultHelp=0
let g:ycm_confirm_extra_conf=0    "打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件"

nmap <C-H> <C-W>h 
nmap <C-J> <C-W>j 
nmap <C-K> <C-W>k 
nmap <C-L> <C-W>l 
map <C-F> :Grep 

nmap m gd
nmap ci \ci
nmap fw :w<CR>
nmap fq <Esc><C-z><CR>
nmap q <Esc>:q<CR>
map <C-Y> bvey
map <F4> :bn<CR>

nmap fw :w<CR>
nmap fq <Esc><C-z><CR>
nmap q <Esc>:q<CR>
nmap <F12> :TlistToggle<CR>
nmap <F10> :NERDTreeToggle<CR>
nmap <Leader>y :!echo --==<C-R><C-w>==-- ;ici <C-R><C-W><CR>


nmap <Leader>y :!echo --==<C-R><C-w>==-- ;ici <C-R><C-W><CR>
map <F2> :bp<CR>
map <F3> :bn<CR>
map <F7> :ClangFormat<CR>
map <F9> :BufExplorer<CR>
map <F10> :NERDTreeToggle<CR>
map <F12> :TlistToggle<CR>
map <C-F> :Grep 
let g:ConqueTerm_ToggleKey = '<F8>'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
vmap <C-c> "+y

