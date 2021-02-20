#! /usr/bin/env bash

# 安装常用依赖
sudo apt install -y \
    tmux \
    silversearcher-ag \
    tig \
    ctags \
    cscope \
    trash-cli \
    zsh \
    clang-format-3.8 \
    python-pip \
    fcitx \
    libncurses5-dev

# 安装fzf
git clone https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
sudo chsh -s `which zsh`

# 支持clipboard
sudo apt install -y libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev

# 下载vim8.2
wget https://github.com/vim/vim/archive/v8.2.2529.zip
unzip ./v8.2.2529.zip

# 编译vim8.2
cd vim-8.2.2529 && \
    ./configure \
    --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-pythoninterp=yes \
    --with-python-command=/usr/bin/python \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    --enable-perlinterp=yes \
    --enable-luainterp=yes  \
    --enable-cscope \
    --with-x \
    && make -j8 \
    && sudo make install

# 安装nodejs
sudo apt install -y nodejs npm
sudo npm install -g n
sudo n lts

# 配置众多配置文件
sudo ln -s -f ~/.vim/env/zsh/zshrc ~/.zshrc
sudo ln -s -f ~/.vim/env/apt/sources.list /etc/apt/sources.list
sudo ln -s -f ~/.vim/env/tig/tigrc ~/.tigrc
sudo ln -s -f ~/.vim/env/tig/tigrc.theme ~/.tigrc.theme
sudo ln -s -f ~/.vim/env/tmux/tmux.conf ~/.tmux.conf
sudo ln -s -f ~/.vim/env/zsh/af-magic.zsh-theme ~/.oh-my-zsh/themes/af-magic.zsh-theme
sudo ln -s -f  `which clang-format-3.8` /usr/bin/clang-format

# 安装C++ Language Server, 若条件允许请通过科学上网进行下载
sudo snap set system proxy.https="http://127.0.0.1:12333"
sudo snap set system proxy.http="http://127.0.0.1:12333"
sudo snap install ccls --classic

# 安装Python Language Server
#curl https://bootstrap.pypa.io/2.7/get-pip.py --output get-pip.py
sudo python env/python2.7/get-pip.py
sudo pip install jedi
