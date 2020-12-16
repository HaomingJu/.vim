#
# CopyRight 2018 EveryOne
#
#
# 使用antigen插件管理器
#curl -L git.io/antigen > antigen.zsh


# 安装oh-my-zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# [可选] autojump插件安装
# sudo apt-get install autojump
# git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions


# Path to your oh-my-zsh installation.
source ~/.vim/antigen/antigen.zsh

# antigen插件列表
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle colored-man-pages
antigen bundle web-search
antigen bundle z
antigen bundle cp
antigen bundle extract
antigen bundle history
antigen bundle docker
antigen bundle dash

antigen apply

export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
ZSH_THEME="af-magic"
HIST_STAMPS="mm/dd/yyyy"

# 不保存重复的历史记录项
setopt hist_save_no_dups
setopt hist_ignore_dups


export ARCNIST_PATH=$HOME/software/arcnistDirs/arcanist
export PATH=$HOME/bin:/usr/local/bin:$HOME/Desktop/ipc:$ARCNIST_PATH/bin:/opt/ros/kinetic/lib/x86_64-linux-gnu:/usr/local/cuda/bin:$PATH

source $ZSH/oh-my-zsh.sh

# 命令别名
alias CL='clang-format-3.8 -i'
alias l='ls -alh'
alias ll='ls -lh'
alias g='git status'
alias gb='git branch -avv'
alias t='tig'
alias c='clang-format-3.8 -i'
alias vi='vim'
alias v='vim'
alias rm='trash-put'
#alias RM="rm"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey '^f' vi-forward-word




#################################################################################################
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git autojump zsh-autosuggestions)
# User configuration




#export TensorRT_DIR=/home/xd/TensorRT-7.0.0.11
export TensorRT_DIR=/home/xd/TensorRT-7.1.3.4
export ARTIFACTORY_USERNAME=haoming
export ARTIFACTORY_PWD=Juhaoming123

export LD_LIBRARY_PATH=/usr/local/cuda/lib64/:/home/gpu/libtorch/lib/:${LD_LIBRARY_PATH}

export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/cuda/lib64/:/home/gpu/libtorch/lib/:${LD_LIBRARY_PATH}:${TensorRT_DIR}/lib

export CPLUS_INCLUDE_PATH=/usr/local/cuda/include:${CPLUS_INCLUDE_PATH}

export C_INCLUDE_PATH=/usr/local/cuda/include:${C_INCLUDE_PATH}

export FZF_DEFAULT_COMMAND='ag -g '

source /opt/ros/kinetic/setup.zsh
source /opt/trunk/install_release/setup.sh

# Nvidia 板子
#export ROS_HOSTNAME=192.168.1.1
#export ROS_MASTER_URI=http://192.168.1.1:11311

export ROS_HOSTNAME=127.0.0.1
export ROS_MASTER_URI=http://127.0.0.1:11311
#
#export ROS_HOSTNAME=192.168.3.102
#export ROS_MASTER_URI=http://192.168.3.102:11311

#export http_proxy="http://127.0.0.1:12333"
#export https_proxy="http://127.0.0.1:12333"

#export DISTCC_POTENTIAL_HOSTS='localhost 192.168.3.171'
#export DISTCC_HOSTS='localhost 192.168.3.171'
#export DISTCC_HOSTS='192.168.3.171 localhost'
#export CXX="distcc g++"
#export CC="distcc gcc"
