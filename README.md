# 0. 新年快乐

来到2021年啦, 祝大家新年快乐.

在周末的时间将目前的vim插件以及配置进行整理. 给出了安装脚本和详细的使用说明.

vim 8.2版本已经发布, 加入了新的特性**Pop Up Windows**的特性. 使之具备了类似VSCode的提示窗的特性.

最重要的自动补全插件由[YouCompleteMe](https://github.com/ycm-core/YouCompleteMe.git)改成[coc.nvim](https://github.com/neoclide/coc.nvim.git), 使用更加方便. 

依托coc.nvim, 该配置支持C++/Python/JavaScript等语言的语义分析和补全.

# 1. 文件目录介绍

![folder intro](./doc/img/folder.svg)

# 2. 安装

* 部署环境

```
./deploy.sh
```

* 安装插件

```
vim -c PlugInstall
```

* 安装Coc拓展

```
再次进入vim, 自动进行安装Coc拓展
```

* 检查

```
打开C++/Python文件, 查看补全功能
```


# 3. 功能介绍

## 3.1 快捷键说明

| 快捷键 | 功能 | 定义 |
| ---- | ---- | ---- |
| Space | Leader键 | let mapleader="\<Space>" |
| Ctrl+J | 窗口间光标跳转---向下 | nmap <C-J> :wincmd j<CR> |
| Ctrl+K | 窗口间光标跳转---向上 | nmap <C-K> :wincmd k<CR> |
| Ctrl+H | 窗口间光标跳转---向左 | nmap <C-H> :wincmd h<CR> |
| Ctrl+L | 窗口间光标跳转---向右 | nmap <C-L> :wincmd l<CR> |
| m | 高亮光标所在的单词 | nmap m gd |
| F7 | 格式化C系代码 | |
| F10 | 开闭目录树窗口 | map <F10> :NERDTreeToggle<CR> |
| F12 | 开闭函数结构窗口 | map <F12> :TagbarToggle<CR> |

## 3.2 特色功能

插件安装

![PlugInstall](doc/img/PlugInstall.gif)

文件搜索 [来自CtrlP]

![CtrlP](doc/img/CtrlP.gif)

代码段补全 [来自coc-snippet]

![Snippets](doc/img/Snippets.gif)

C++语法解析补全 [来自coc language server: ccls]

![C++](doc/img/coc_c++.gif)

Python语法解析补全 [来自coc language server: jedi]

![Python](doc/img/coc_python.gif)

CMake语法补全 [来自coc]

![cmake](doc/img/cmake.gif)


注释代码 [来自]

![comment](doc/img/comment.gif)

快速移动 [来自easy-motion]

![easy-motion](doc/img/easy_motion.gif)

目录树 [来自NERDTree]

![nerdtree](doc/img/nerd_tree.gif)

函数表搜索

![funcs](doc/img/funcs.gif)

> [快速部署科学上网链接](https://邀请01.很有精神.com/auth/register?code=gCCw)
