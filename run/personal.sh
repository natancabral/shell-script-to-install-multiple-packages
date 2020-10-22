#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/run/personal.sh | bash

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# Update
echo -e "\n ${Cyan} Updating package repositories.. ${Color_Off}"
sudo apt -qq update 
sudo apt install software-properties-common apt-transport-https wget

# Faster Open Apps - Preload on RAM
sudo apt install preload

# Install SNAP
sudo apt install snapd

# Git
sudo apt install git

# Keepass
echo -e "\n ${Cyan} Install Keepass.. ${Color_Off}"
sudo snap install keepassxc

# VLC
sudo snap install vlc

# MS Code
echo -e "\n ${Cyan} Install Code Try (1).. ${Color_Off}"
sudo snap install --classic code # or code-insiders
# import the Microsoft GPG key using the following
echo -e "\n ${Cyan} Install Code Try (2).. ${Color_Off}"
echo -e "\n ${Green} Key.. ${Color_Off}"
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# enable the Visual Studio Code repository by typing: 
echo -e "\n ${Green} Download Code.. ${Color_Off}"
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
# Or
# Download .deb
# https://code.visualstudio.com/Download
# sudo apt install ./<file>.deb

# Final
sudo apt update
sudo apt upgrade

