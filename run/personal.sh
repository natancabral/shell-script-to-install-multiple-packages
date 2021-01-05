#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/personal.sh | bash

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
sudo apt-get -qq update 

# Yes Default
# --yes | -y
# --force-yes
# --assume-yes - yes to all
# $ sudo apt-get -y install [package]

# Remove App
# sudo apt-get remove [package] 
# Run these commands to delete all words and settings:
# sudo rm ~/"[package-word]" -Rf
# sudo rm ~/.config/[package-word]/ -Rf
# sudo apt-get remove --purge [package] 

# Purge App
# Remove a software completely from your system with its configuration or data files so that no longer personalized settings will be available during reinstallation
# sudo apt-get purge <package>
# sudo apt-get remove --purge <package> 

# Autoremove
# Remove any unnecessary packages. Unnecessary means, whenever you install an application, the system will also install the software that this application depends on.
# sudo apt-get autoremove

# Case
# read -p "Continue (y/n)?" choice
# case "$choice" in 
#   y|Y ) echo "yes";;
#   n|N ) echo "no";;
#   * ) echo "invalid";;
# esac

# If
# read -p "Continue (y/n)?" CONT
# if [ "$CONT" = "y" ]; then
#   echo "yaaa";
# else
#   echo "booo";
# fi

# If Y/y
# read -p "Are you sure? " -n 1 -r
# echo    # (optional) move to a new line
# if [[ $REPLY =~ ^[Yy]$ ]]
# then
#    # do dangerous stuff
# fi

# echo "Please talk to me ..."
# while :
# do
#   read INPUT_STRING
#   case $INPUT_STRING in
# 	hello) 
#		echo "Hello yourself!"
#		;;
#	bye)
#		echo "See you again!"
#		break
#		;;
#	*)
#		echo "Sorry, I don't understand"
#		;;
#  esac
# done
# echo 
# echo "That's all folks!"

# -p = prompt -n = number chars, choice = variable
# read -p "Continue (y/n)?" -n 1 choice 
# case $choice in 
#   y|Y) echo "yes";;
#   n|N) echo "no";;
#   x|X) ls;;
#   *) echo "invalid";;
# esac
# https://bash.cyberciti.biz/guide/The_case_statement
# https://www.tutorialspoint.com/unix/case-esac-statement.htm

# Install FLATPAK
echo -e "\n ${Cyan} Flatpak.. ${Color_Off}"
sudo apt-get -y install flatpak

# Install SNAP
echo -e "\n ${Cyan} Snap Snapd ${Color_Off}"
sudo apt-get -y install snap
sudo apt-get -y install snapd

# Faster Open Apps - Preload on RAM
echo -e "\n ${Cyan} Preload ${Color_Off}"
sudo apt-get -y install preload

# Git
echo -e "\n ${Cyan} Git ${Color_Off}"
sudo apt-get -y install git

# cUrl
echo -e "\n ${Cyan} cUrl ${Color_Off}"
sudo apt-get -y install curl

# Composer
echo -e "\n ${Cyan} Composer ${Color_Off}"
sudo apt-get -y install composer

# Yarn - Package Manager
echo -e "\n ${Cyan} Yarn - Package Manager ${Color_Off}"
sudo apt-get -y install yarn

# Standard Notes
echo -e "\n ${Cyan} Standard Notes ${Color_Off}"
sudo snap install --classic --yes standard-notes

# Beekeeper Studio
echo -e "\n ${Cyan} Beekeeper Studio ${Color_Off}"
sudo snap install --classic --yes beekeeper-studio 

# GNOME packages
echo -e "\n ${Cyan} Gnome Packagekit (to open: \$ gpk-application).. ${Color_Off}"
sudo apt-get -y install gnome-packagekit
# To open: gpk-application

# G SNAP STORE
echo -e "\n ${Cyan} G SNAP Store.. ${Color_Off}"
sudo snap install --classic --yes gsnapstore

# Keepass
echo -e "\n ${Cyan} Install Keepass.. ${Color_Off}"
sudo apt-get -y install keepassxc

# Vim Text Editor
echo -e "\n ${Cyan} Vim Text Editor.. ${Color_Off}"
sudo apt-get -y install vim

# gnome-tweaks
echo -e "\n ${Cyan} Gnome Tweaks.. ${Color_Off}"
sudo apt-get install -y gnome-tweaks 

# Stacer
echo -e "\n ${Cyan} Stacer.. ${Color_Off}"
sudo apt-get install stacer

# Nano Text Editor
echo -e "\n ${Cyan} Nano Text Editor.. ${Color_Off}"
sudo apt-get -y install nano

# Filezilla FTP
echo -e "\n ${Cyan} FTP Filezilla.. ${Color_Off}"
sudo apt-get -y install filezilla

# Unrar
echo -e "\n ${Cyan} Unrar.. ${Color_Off}"
sudo apt-get -y install unrar
# unrar e filename.rar
# unrar e filename.rar /home/
# e : Extract files without archived paths
# unrar x filename.rar
# x : Extract files with full path
# unrar l filename.rar
# l[t[a],b] : List archive contents [technical[all], bare]

# VLC
echo -e "\n ${Cyan} VLC.. ${Color_Off}"
sudo apt-get -y install vlc

# Vino Screen Share / Mirror
echo -e "\n ${Cyan} Vino Screen Share / Mirror.. ${Color_Off}"
echo -e " ${Cyan} Enter Settings > Sharing ${Color_Off}"
sudo apt-get -y install vino

echo -e "\n ${Cyan} Beekeeper Studio / SQL DataBase.. ${Color_Off}"
sudo snap install --classic --yes beekeeper-studio

# OBS Studio
echo -e "\n ${Cyan} OBS Studio.. ${Color_Off}"
sudo apt-get -y install obs-studio

# Gnome Boxes Virtual Machine
echo -e "\n ${Cyan} GNOME Boxes Virtual Machine.. ${Color_Off}"
sudo apt-get -y install gnome-boxes
# sudo flatpak install flathub org.gnome.Boxes
# ***Note: At the time of installation, if any error occurs like the message : “Unable to lock the administration directory (/var/lib/dpkg/) is another process using it?”, then run the following commands to solve this problem.
# $ sudo rm /var/lib/apt/lists/lock
# $ sudo rm /var/cache/apt/archives/lock
# $ sudo rm /var/lib/dpkg/lock

# Virtual Box Machine
# sudo apt-get install virtualbox

# MS Code
echo -e "\n ${Cyan} Install Code Try (1).. ${Color_Off}"
sudo apt-get install software-properties-common apt-transport-https wget -y 
echo -e "\n ${Green} Download Code Key.. ${Color_Off}"
# import the Microsoft GPG key using the following
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo -e "\n ${Green} Download Repository Code.. ${Color_Off}"
# enable the Visual Studio Code repository by typing: 
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
echo -e "\n ${Green} Install Code.. ${Color_Off}"
sudo apt-get -y install code
# Or
echo -e "\n ${Cyan} Install Code Try (2).. ${Color_Off}"
sudo snap install --classic code --yes  # or code-insiders
# Or
# Download .deb
# https://code.visualstudio.com/Download
# sudo apt-get install ./<file>.deb

# Final
sudo apt-get update
sudo apt-get --fix-broken install --yes
# sudo apt-get upgrade 
