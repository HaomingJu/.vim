#! /bin/bash
sudo apt-get install clang-format-3.8 -y
sudo apt-get install vim-nox -y
sudo apt-get install vim-gui-common -y
sudo apt-get install silversearcher-ag -y
sudo pip install ici -y
sudo apt-get install ctags -y
sudo apt-get install cmake -y
sudo apt-get install python-dev -y
sudo apt-get install clang -y
sudo apt-get install cscope -y
sudo apt-get install trash-cli -y
sudo apt-get install zsh -y
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && sh ~/.fzf/install.sh
