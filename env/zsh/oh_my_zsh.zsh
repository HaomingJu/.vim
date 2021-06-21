plugins=(git colored-man-pages z cp extract history docker docker-compose dash)

export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
ZSH_THEME="apple"
HIST_STAMPS="mm/dd/yyyy"

# 不保存重复的历史记录项
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt nonomatch

source $ZSH/oh-my-zsh.sh
