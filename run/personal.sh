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

# Yes Default
# --yes | -y
# --force-yes
# --assume-yes - yes to all
# $ sudo apt -y install [package]

# Remove App
# sudo apt-get remove --purge [package] 
# Run these commands to delete all words and settings:
# sudo rm ~/"[package-word]" -Rf
# sudo rm ~/.config/[package-word]/ -Rf

# Install FLATPAK
echo -e "\n ${Cyan} Flatpak.. ${Color_Off}"
sudo apt -y install flatpak

# Install SNAP
echo -e "\n ${Cyan} Snap Snapd.. ${Color_Off}"
sudo apt -y install snapd
sudo apt -y install snap

# Faster Open Apps - Preload on RAM
echo -e "\n ${Cyan} Preload.. ${Color_Off}"
sudo apt -y install preload

# Git
echo -e "\n ${Cyan} Git.. ${Color_Off}"
sudo apt -y install git

# cUrl
echo -e "\n ${Cyan} cUrl.. ${Color_Off}"
sudo apt -y install curl

# GNOME packages
echo -e "\n ${Cyan} Gnome Packagekit (to open: \$ gpk-application).. ${Color_Off}"
sudo apt install gnome-packagekit -y
# To open: gpk-application

# Keepass
echo -e "\n ${Cyan} Install Keepass.. ${Color_Off}"
sudo apt -y install keepassxc

# Vim Text Editor
echo -e "\n ${Cyan} Vim Text Editor.. ${Color_Off}"
sudo apt -y install vim

# Nano Text Editor
echo -e "\n ${Cyan} Nano Text Editor.. ${Color_Off}"
sudo apt -y install nano

# VLC
echo -e "\n ${Cyan} VLC.. ${Color_Off}"
sudo apt -y install vlc

# Gnome Boxes Virtual Machine
echo -e "\n ${Cyan} GNOME Boxes Virtual Machine.. ${Color_Off}"
sudo apt -y install gnome-boxes
# sudo flatpak install flathub org.gnome.Boxes
# ***Note: At the time of installation, if any error occurs like the message : “Unable to lock the administration directory (/var/lib/dpkg/) is another process using it?”, then run the following commands to solve this problem.
# $ sudo rm /var/lib/apt/lists/lock
# $ sudo rm /var/cache/apt/archives/lock
# $ sudo rm /var/lib/dpkg/lock

# Virtual Box Machine
# sudo apt-get install virtualbox

# MS Code
echo -e "\n ${Cyan} Install Code Try (1).. ${Color_Off}"
sudo apt -y install software-properties-common apt-transport-https wget
sudo snap -y install --classic code # or code-insiders
# import the Microsoft GPG key using the following
echo -e "\n ${Cyan} Install Code Try (2).. ${Color_Off}"
echo -e "\n ${Green} Key.. ${Color_Off}"
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# enable the Visual Studio Code repository by typing: 
echo -e "\n ${Green} Download Code.. ${Color_Off}"
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt -y install code
# Or
# Download .deb
# https://code.visualstudio.com/Download
# sudo apt install ./<file>.deb

# Final
sudo apt update
sudo apt --fix-broken install --yes
# sudo apt upgrade 
