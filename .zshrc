# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"
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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#color{{{
autoload colors
colors
 
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
eval _$color='%{$terminfo[bold]$fg[${(L)color}]%}'
eval $color='%{$fg[${(L)color}]%}'
(( count = $count + 1 ))
done
FINISH="%{$terminfo[sgr0]%}"
#}}}
 
#命令提示符
#RPROMPT=$(echo "$RED%D %T$FINISH")
#PROMPT=$(echo "$CYAN%n@$YELLOW%M:$GREEN%/$_YELLOW>$FINISH ")
 
#PROMPT=$(echo "$BLUE%M$GREEN%/
#$CYAN%n@$BLUE%M:$GREEN%/$_YELLOW>>>$FINISH ")
#标题栏、任务栏样式{{{
case $TERM in (*xterm*|*rxvt*|(dt|k|E)term)
precmd () { print -Pn "\e]0;%n@%M//%/\a" }
preexec () { print -Pn "\e]0;%n@%M//%/\ $1\a" }
;;
esac
#}}}
 
#编辑器
export EDITOR=vim
#输入法
export XMODIFIERS="@im=ibus"
export QT_MODULE=ibus
export GTK_MODULE=ibus
#关于历史纪录的配置 {{{
#历史纪录条目数量
export HISTSIZE=10000
#注销后保存的历史纪录条目数量
export SAVEHIST=10000
#历史纪录文件
export HISTFILE=~/.zhistory
#以附加的方式写入历史纪录
setopt INC_APPEND_HISTORY
#如果连续输入的命令相同，历史纪录中只保留一个
#setopt HIST_IGNORE_DUPS
#为历史纪录中的命令添加时间戳
setopt EXTENDED_HISTORY      
 
#启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTO_PUSHD
#相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS
 
#在命令前添加空格，不将此命令添加到纪录文件中
#setopt HIST_IGNORE_SPACE
#}}}
 
 
#杂项 {{{
#允许在交互模式中使用注释  例如：
#cmd #这是注释
setopt INTERACTIVE_COMMENTS      
 
#启用自动 cd，输入目录名回车进入目录
#稍微有点混乱，不如 cd 补全实用
setopt AUTO_CD
 
#扩展路径
#/v/c/p/p => /var/cache/pacman/pkg
setopt complete_in_word
 
#禁用 core dumps
limit coredumpsize 0
 
#Emacs风格 键绑定
bindkey -e
#bindkey -v
#设置 [DEL]键 为向后删除
#bindkey "\e[3~" delete-char
 
#以下字符视为单词的一部分
WORDCHARS='*?_-[]~=&;!#$%^(){}<>'
#}}}
 
#自动补全功能 {{{
setopt AUTO_LIST
setopt AUTO_MENU
#开启此选项，补全时会直接选中菜单项
#setopt MENU_COMPLETE
 
autoload -U compinit
compinit
 
#自动补全缓存
#zstyle ':completion::complete:*' use-cache on
#zstyle ':completion::complete:*' cache-path .zcache
#zstyle ':completion:*:cd:*' ignore-parents parent pwd
 
#自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect:  lines: %L  matches: %M  [%p]'
 
zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate
 
#路径补全
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'
 
#彩色补全菜单
eval $(dircolors -b)
export ZLSCOLORS="${LS_COLORS}"
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
 
#修正大小写
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
#错误校正
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
 
#kill 命令补全
compdef pkill=kill
compdef pkill=killall
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:processes' command 'ps -au$USER'
 
#补全类型提示分组
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
zstyle ':completion:*:corrections' format $'\e[01;32m -- %d (errors: %e) --\e[0m'
 
# cd ~ 补全顺序
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
#}}}
 
##行编辑高亮模式 {{{
# Ctrl+@ 设置标记，标记和光标点之间为 region
zle_highlight=(region:bg=magenta #选中区域
special:bold      #特殊字符
isearch:underline)#搜索时使用的关键字
#}}}
 
##空行(光标在行首)补全 "cd " {{{
user-complete(){
case $BUFFER in
"" )                       # 空行填入 "cd "
BUFFER="cd "
zle end-of-line
zle expand-or-complete
;;
"cd --" )                  # "cd --" 替换为 "cd +"
BUFFER="cd +"
zle end-of-line
zle expand-or-complete
;;
"cd +-" )                  # "cd +-" 替换为 "cd -"
BUFFER="cd -"
zle end-of-line
zle expand-or-complete
;;
* )
zle expand-or-complete
;;
esac
}
zle -N user-complete
bindkey "\t" user-complete
#}}}
 
##在命令前插入 sudo {{{
#定义功能
sudo-command-line() {
[[ -z $BUFFER ]] && zle up-history
[[ $BUFFER != sudo\ * ]] && BUFFER="sudo $BUFFER"
zle end-of-line                 #光标移动到行末
}
zle -N sudo-command-line
#定义快捷键为： [Esc] [Esc]
bindkey "\e\e" sudo-command-line
#}}}
 
#命令别名 {{{
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ls='ls -F --color=auto'
alias ll='ls -al'
alias grep='grep --color=auto'
alias la='ls -a'
alias pacman='sudo pacman-color'
alias p='sudo pacman-color'
alias y='yaourt'
alias h='htop'
alias g='git status'
alias t='tig'
 
#[Esc][h] man 当前命令时，显示简短说明
alias run-help >&/dev/null && unalias run-help
autoload run-help
 
#历史命令 top10
alias top10='print -l  ${(o)history%% *} | uniq -c | sort -nr | head -n 10'
#}}}
 
#路径别名 {{{
#进入相应的路径时只要 cd ~xxx
hash -d A="/media/ayu/dearest"
hash -d H="/media/data/backup/ayu"
hash -d E="/etc/"
hash -d D="/home/ayumi/Documents"
#}}}
 
##for Emacs {{{
#在 Emacs终端 中使用 Zsh 的一些设置 不推荐在 Emacs 中使用它
#if [[ "$TERM" == "dumb" ]]; then
#setopt No_zle
#PROMPT='%n@%M %/
#>>'
#alias ls='ls -F'
#fi
#}}}
 
#{{{自定义补全
#补全 ping
zstyle ':completion:*:ping:*' hosts 192.168.1.{1,50,51,100,101} www.google.com
 
#补全 ssh scp sftp 等
#zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
#}}}
 
#{{{ F1 计算器
arith-eval-echo() {
LBUFFER="${LBUFFER}echo \$(( "
RBUFFER=" ))$RBUFFER"
}
zle -N arith-eval-echo
bindkey "^[[11~" arith-eval-echo
#}}}
 
####{{{
function timeconv { date -d @$1 +"%Y-%m-%d %T" }
 
# }}}
 
zmodload zsh/mathfunc
autoload -U zsh-mime-setup
zsh-mime-setup
setopt EXTENDED_GLOB
#autoload -U promptinit
#promptinit
#prompt redhat
 
setopt correctall
autoload compinstall
 
#漂亮又实用的命令高亮界面
setopt extended_glob
 TOKENS_FOLLOWED_BY_COMMANDS=('|' '||' ';' '&' '&&' 'sudo' 'do' 'time' 'strace')
 
 recolor-cmd() {
     region_highlight=()
     colorize=true
     start_pos=0
     for arg in ${(z)BUFFER}; do
         ((start_pos+=${#BUFFER[$start_pos+1,-1]}-${#${BUFFER[$start_pos+1,-1]## #}}))
         ((end_pos=$start_pos+${#arg}))
         if $colorize; then
             colorize=false
             res=$(LC_ALL=C builtin type $arg 2>/dev/null)
             case $res in
                 *'reserved word'*)   style="fg=magenta,bold";;
                 *'alias for'*)       style="fg=cyan,bold";;
                 *'shell builtin'*)   style="fg=yellow,bold";;
                 *'shell function'*)  style='fg=green,bold';;
                 *"$arg is"*)
                     [[ $arg = 'sudo' ]] && style="fg=red,bold" || style="fg=blue,bold";;
                 *)                   style='none,bold';;
             esac
             region_highlight+=("$start_pos $end_pos $style")
         fi
         [[ ${${TOKENS_FOLLOWED_BY_COMMANDS[(r)${arg//|/\|}]}:+yes} = 'yes' ]] && colorize=true
         start_pos=$end_pos
     done
 }
check-cmd-self-insert() { zle .self-insert && recolor-cmd }
 check-cmd-backward-delete-char() { zle .backward-delete-char && recolor-cmd }
 
 zle -N self-insert check-cmd-self-insert
 zle -N backward-delete-char check-cmd-backward-delete-char
