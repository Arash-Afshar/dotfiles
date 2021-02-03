export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="avit"
#ZSH_THEME="robbyrussell"
ZSH_DISABLE_COMPFIX=true

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/sbin:$PATH"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

TERM=xterm-256color
fpath+=${ZDOTDIR:-~}/.zsh_functions
setxkbmap dvorak -option ctrl:nocaps
source "$HOME/.cargo/env"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aafshar/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aafshar/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aafshar/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aafshar/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

