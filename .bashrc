export PS1="\[\e[36;8m\]\t - \u@\[\e[36;1m\]\h\[\e[0m\]:\w$ "
#umask 012
umask 0022

# You may uncomment the following lines if you want ls to be colorized:

export LS_OPTIONS="--color=auto -h"
eval `dircolors`
alias ls="ls $LS_OPTIONS"
alias ll="ls $LS_OPTIONS -l"
alias l="ls $LS_OPTIONS -lA"

# Some more alias to avoid making mistakes:

alias dir="ls -lAF"
alias ssx="ssh -XC"
alias vdir="ls --color=auto --format=long"
alias vi="vim"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"
export HISTTIMEFORMAT="%m/%h/%Y - %H:%M:%S "
export HISTFILESIZE=10000
export HISTSIZE=10000
