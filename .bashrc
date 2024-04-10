#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\033[01;35m\]\u\[\033[01;31m\]@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '