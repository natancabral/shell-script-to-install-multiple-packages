#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/java.sh | bash

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
echo -e "\n${Cyan} * Updating package repositories... ${Color_Off}"
sudo apt-get -qq update 

# Install SNAP
echo -e "\n${Cyan} * Snap Snapd.. ${Color_Off}"
sudo apt-get -y install snapd
sudo apt-get -y install snap

# NetBeans Stable
echo -e "\n${Cyan} * Java NetBeans.. ${Color_Off}"
sudo snap install netbeans --classic
