## 配置vim的c++开发环境.

### 环境
Ubuntu16.04 LTS

vim8.2.96 (Compile self)


### 使用ccls作为语言服务(coc.nvim language server)

这里不使用coc.nvim的coc-clangd插件, 改为ccls作为语言服务器.
```
sudo snap install ccls --classic
```

### 为项目生成补全文件
```
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../
```

亦可在CMakeLists.txt文件中加入(未尝试)
```
add_definitions(-DCMAKE_EXPORT_COMPILE_COMMANDS=ON)
```

会生成`compile_commands.json`文件, 将会建立整个工程的tags补全数据库.



### 参考
> https://ianding.io/2019/07/29/configure-coc-nvim-for-c-c++-development/<br/>
https://sarcasm.github.io/notes/dev/compilation-database.html#cmake

### 自行编译ccls

安装gcc-8/g++-8

```
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-8
sudo apt-get install g++-8
```

配置gcc-8为默认gcc g++亦是
```
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 100
sudo update-alternatives --config gcc
gcc --version
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 100
sudo update-alternatives --config g++
g++ --version
```

Clone ccls代码
```
git clone --depth=1 --recursive https://github.com/MaskRay/ccls
```

编译安装ccls
```
cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=/home/haoming/clang+llvm-8.0.0-x86_64-linux-gnu-ubuntu-16.04

sudo cmake --build Release --target install
```

