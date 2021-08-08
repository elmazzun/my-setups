#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias off='shutdown now'
alias rbt='reboot now'

alias ..='cd ..'
alias l='ls'
alias lsa='ls -la'

# Git
alias gst='git status'
alias gl='git log'
alias ga='git add'
alias gcm='git commit'
alias gco='git checkout'
alias gps='git push'
alias gpl='git pull'

# Kubectl
source <(kubectl completion bash | sed 's/kubectl/k/g')

