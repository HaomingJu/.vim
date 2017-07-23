# 一、依赖

由于各个插件都依赖不同的环境，作者做出一个比较简单的脚本，用以依赖关系。<p>
且在vimrc文件中，作者写入了详细的配置注释，方面诸君增删改和学习，谢谢。<p>
请执行文件.vim/install.sh文件，进行依赖包的下载。<p>
之后请在Terminal终端中执行一下命令：<p>
ln -s /usr/bin/clang-format /usr/bin/clang-format-3.8（请依据你的clang-format-3.8的安装位置修改路径）<p>

# 二、快捷键汇总

|快捷键|说明|快捷键|说明|
|------|----|------|----|
|&lt;C-h&gt;|移动光标到左侧窗口|&lt;F7&gt;|格式化代码风格|
|&lt;C-j&gt;|移动光标到下侧窗口|&lt;F9&gt;|调出缓冲区列表|
|&lt;C-k&gt;|移动光标到上侧窗口|&lt;F10&gt;|开关目录树|
|&lt;C-l&gt;|移动光标到右侧窗口|&lt;F11&gt;|全屏终端|
|&lt;C-c&gt;|在Visual模式下，可将选中的文本复制到系统剪切板中|&lt;F12&gt;|开关函数列表|
|&lt;C-n&gt;|选中光标所在的单词，并进入多光标操作|m|高亮光标所在单词|
|&lt;C-p&gt;|调出模糊查找文件窗口|n|跳向下一个搜索的文本|
|&lt;C-f&gt;|全局查找|u|恢复上一次修改|
|A|在行尾追加|D|删除从光标处至行尾的所有文本|
|.|重复上一次操作




# 三、详细功能介绍

## 1、代码风格格式化
作者内置Allman风格配置。<p>
尽管Google风格很通用，但是花括号不换行，参数列表摆放杂乱，这些风格特征作者看的眼疼真的受不了。<p>
可以自行设置自己需要的风格，参照http://clang.llvm.org/docs/ClangFormatStyleOptions.html <p>

插件：vim-clang-format

快捷键：F7

效果图: <p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/1_res.gif)


## 2、Buffer缓冲区查看
尽管airline插件自带缓冲区查看功能，但是作者感觉其实际效果并不好。如果存在较多的缓冲区，缓冲区Tab将会无休止的增加，妨碍查看和切换。<p>
换用vim-bufferline插件即可通过快捷键将所有的以打开的缓冲区以列表的形式显示，并可直接切换。<p>

插件：vim-airline

快捷键：F9

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/2_res.gif)

## 3、配色方案molokai
之前使用的是与YouCompleteMe插件配套的颜色方案：color_coded。但其编译困难，需要vim支持Lua等。<p>
为了正常显示配色，需要将Terminal的Colors配置更改。<p>
进入到Edit->Profile->Preferences->Colors中，将选项"Use colors from system theme"取消即可。<p>
现在换用molokai颜色方案，是视觉上的一个提升<p>

插件：molokai

效果图：暂无,可参照其它动图<p>


## 4、文件模糊查找

文件模糊查找<p>

插件：ctrlp

快捷键：&lt;C-p&gt;

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/4_res.gif)

## 5、目录树和函数列表显示
插件：NERDTree、TagList

快捷键：&lt;F10&gt; 开关目录树,&lt;F11&gt; 开关函数列表

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/5_res.gif)


## 6、函数自动补全
YouCompleteMe需要自行编译<p>

插件：YouCompleteMe

快捷键： &lt;Tab&gt;

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/6_res.gif)


## 7、参数提示：

插件：echofunc

效果图：暂无


## 8、全局搜索

插件：Ag

快捷键： &lt;C-f&gt;

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/8_res.gif)


## 9、文件内搜索
在文件内以递增的形式进行搜索<p>

快捷键： /

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/9_res.gif)

## 10、多光标操作
可同时操纵n行，极大的提升键入速度

插件： vim-multiple-cursors

快捷键： &lt;C-n&gt;

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/10_res.gif)


## 11、英语查询
在解决依赖的那一部分，在.vim/install.sh文件中已经安装了ici（pip install ici）,所以可以直接在vim中通过快捷键\y直接查询光标所在单词的中文意义。<p>

快捷键： \y

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/11_res.gif)


## 12、高亮
插件： Mark

快捷键： m

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/12_res.gif)

## 13、注释和解注释
可以注释单行或多行。直接在normal的模式下，按下快捷键将会注释/解注释当前光标所在的行。如果在visual模式下，按下快捷键将会注释掉选中的行。<p>

插件： NERDCommenter

快捷键： ci

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/13_res.gif)


## 14、插件拓展
多线程插件管理器，可多线程下载安装插件。将要下载的插件的Git Repository地址写入到vimrc文件中，执行`:PlugInstll`即可。<p>

插件： vim-plug

效果图：<p>
![](https://github.com/HaomingJu/.vim/blob/develop/img/14_res.gif)



感谢有你曾经的陪伴
