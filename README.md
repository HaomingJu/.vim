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

// TODO(haoming): 动图补充


> [快速部署科学上网链接](https://邀请01.很有精神.com/auth/register?code=gCCw)
