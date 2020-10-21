#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/uninstall-mysql.sh | bash

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# Uninstall Mysql
echo -e "\n ${Purple} Uninstall MySql.. ${Color_Off}"

sudo apt-get remove --purge mysql*
sudo apt-get purge mysql*
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get remove dbconfig-mysql
sudo apt-get dist-upgrade
# sudo apt-get install mysql-server
