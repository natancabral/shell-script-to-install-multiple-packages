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
echo -e "\n ${Yellow} Uninstall MySql.. ${Color_Off}"
sudo apt remove --purge mysql*
sudo apt purge mysql*
sudo apt autoremove
# sudo apt-get remove dbconfig-mysql

# remove phpmyadmin
echo -e "\n ${Yellow} Uninstall PhpMyAdmin.. ${Color_Off}"
sudo apt purge phpmyadmin # or
sudo apt remove phpmyadmin
sudo apt autoremove

# remove php
echo -e "\n ${Yellow} Uninstall Php.. ${Color_Off}"
sudo apt purge php.*
sudo apt autoremove

# remove apache2
echo -e "\n ${Yellow} Uninstall Apache 2.. ${Color_Off}"
sudo service apache2 stop
sudo apt remove apache2*
# sudo apt purge apache2 apache2-utils apache2.2-bin apache2-common
sudo apt autoremove

# update
echo -e "\n ${Yellow} Auto Clean.. ${Color_Off}"
sudo apt autoremove
sudo apt autoclean
sudo apt dist-upgrade

