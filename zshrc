export ZSH="~/.oh-my-zsh"

ZSH_THEME="avit"
ZSH_DISABLE_COMPFIX=true

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:$PATH"

TERM=xterm-256color
