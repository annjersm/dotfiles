autoload -U colors && colors

# Show git version in terminal
# Promt:
#   %s   The current version control system, like git or svn.
#   %r   The name of the root directory of the repository.
#   %S   The current path relative to the repository root directory.
#   %b   Branch information, like master
#   %m   In case of Git, show information about stashes
#   %u   Show unstaged changes in the repository
#   %c   Show staged changes in the repository
#   %F{} Color
autoload -Uz vcs_info
precmd () { vcs_info }
setopt prompt_subst
#zstyle ':vcs_info:*' formats "%s(%F{red}%b%f) %F{blue}%r/%S%f"
zstyle ':vcs_info:*' formats "%F{cyan}%r:%s(%F{red}%b%f%F{cyan})%f%F{blue}/%S%f "


PS1='%F{magenta}[%*] %F{red}(¬_¬)%f $vcs_info_msg_0_%F{blue}§%f '
#PS1='%F{magenta}[%*] %F{green}%n%f $vcs_info_msg_0_$ '
#PS1="%F{magenta}[%*] %F{green}%n%f %F{blue}%1~%f $vcs_info_msg_0_$ "


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
