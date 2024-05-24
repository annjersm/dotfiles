# Set up the prompt

autoload -U colors && colors
autoload -Uz promptinit
promptinit
#prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
#bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh/zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# Custom Afther this

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

alias ls='ls --color=always'
alias grep='grep --color=auto'
alias vim='nvim'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias tmux_init='~/bin/tmux_init.sh'
alias vimb='vim src/main.c src/*'

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
xinput set-prop "$(xinput list --name-only | grep -i touch)" "libinput Tapping Enabled" 1


export PATH="${PATH:+${PATH}:}~/bin"
