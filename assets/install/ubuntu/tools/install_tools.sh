#!/usr/bin/env bash
set -ex

# Install some useful tools
add-apt-repository ppa:zhangsongcui3371/fastfetch -y
apt update
apt -y install mc
apt -y install htop 
apt -y install bash bash-completion tar 
apt -y install tree 
apt -y install multitail
apt -y install fastfetch
apt -y install fontconfig
apt -y install trash-cli
apt -y install cmatrix
apt -y install kubectx 
apt -y install zoxide 
apt -y install gping
apt -y install tmux

# Install Net Utils
apt -y install net-tools
apt -y install mc
apt -y install iputils-ping
apt -y install dnsutils
apt -y install ranger 
apt -y install tty-clock
apt -y install make
apt -y install screen
apt -y install vim
apt -y install ssh



