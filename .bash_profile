#
# ~/.bash_profile
#

function update_arch() {
    local answer
    read -p "Update ARCH? [y-n]: " answer
    if [[ "$answer" == "y" ]]; then
        sudo pacman -Syu
    fi
}

function arch_distro() {
    (uname -r | grep -q arch) || [[ -f /etc/arch-release ]]
}

if arch_distro; then
    update_arch
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc


