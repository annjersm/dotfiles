autoload -U colors && colors

autoload -Uz vcs_info
precmd () { vcs_info }
setopt prompt_subst
zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)'

PS1='%F{magenta}[%*] %F{green}%n %F{blue}%1~%f$vcs_info_msg_0_$ '

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
