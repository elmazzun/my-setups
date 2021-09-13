#
# ~/.bash_profile
#

function is_x_off() {
    [[ -z "$DISPLAY" ]]
}

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

function update_debian_based() {
    local answer
    read -p "Update $(lsb_release -i | awk '{print $3}')? [y-n]: " answer
    if [[ "$answer" == "y" ]]; then
        sudo apt update && apt upgrade
    fi
}

function debian_based() {
    which apt &> /dev/null
}

if arch_distro && is_x_off; then
    update_arch
elif debian_based && is_x_off;
    then update_debian_based
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

