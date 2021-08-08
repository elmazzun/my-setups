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
alias vi='vim'

# Git
alias gst='git status'
alias gl='git log'
alias ga='git add'
alias gcm='git commit'
alias gco='git checkout'
alias gps='git push'
alias gpl='git pull'

# Kubectl
alias knodes='kubectl get nodes'
alias kpods='kubectl get pods'
alias kconf='kubectl config view'
alias kversion='kubectl version'
alias kservs='kubectl get services'
alias kreplset='kubectl get replicaset'
alias klogs='kubectl logs' # <POD NAME>
alias kdescrpod='kubectl describe pod' # <POD NAME>
alias kdepls='kubectl get deployments'
alias knewdepl='kubectl create deployment' # <NAME> --image=image [--dry-run] [options]
alias kdeldepl='kubectl delete deployment' # <NAME>

function kapply() { # <FILE NAME>
    local deployment_file="$1"
    kubectl apply -f "$deployment_file"
}

function kexec() { # <POD NAME>
    local pod="$1"
    kubectl exec -it "$pod" -- bin/bash
}

