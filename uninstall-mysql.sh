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
sudo apt-get remove dbconfig-mysql

# remove phpmyadmin
echo -e "\n ${Purple} Uninstall PhpMyAdmin.. ${Color_Off}"
sudo apt-get purge phpmyadmin #or
sudo apt-get remove phpmyadmin

# remove php
echo -e "\n ${Purple} Uninstall Php.. ${Color_Off}"
sudo apt-get purge php.*

# remove apache2
echo -e "\n ${Purple} Uninstall Apache 2.. ${Color_Off}"
sudo service apache2 stop
sudo apt-get remove apache2*
sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common

# update
echo -e "\n ${Purple} Auto Clean.. ${Color_Off}"
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get dist-upgrade

