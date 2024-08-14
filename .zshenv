export HISTFILE="~/.config/zsh/zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY


export PATH="${PATH:+${PATH}:}~/bin"

export ZDOTDIR=~/.config/zsh
