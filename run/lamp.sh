#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/lamp.sh | bash

###################################################################
#         Author: Natan Cabral
#           Link: https://github.com/natancabral/ubuntu-bash-script-config-lamp/
#    Description: For Debian based systems.
#            Run: 
#          Notes: In case of any errors (e.g. MySQL) just re-run the script. 
#                 Nothing will be re-installed except for the packages with errors.
###################################################################

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# GENERATE PASSOWRDS
# sudo apt -qy install openssl # openssl used for generating a truly random password
PASS_MYSQL_ROOT=`openssl rand -base64 12` # this you need to save. 12 is chars length to password
PASS_PHPMYADMIN_APP=`openssl rand -base64 12` # can be random, won't be used again.  12 is chars length to password
PASS_PHPMYADMIN_ROOT="${PASS_MYSQL_ROOT}" # Your MySQL root pass

# Check if running as root  
if [ "$(id -u)" != "0" ]; then  
  echo -e "\n ${Yellow} This script must be run as root ${Color_Off}" 
  echo -e " ${Yellow} Try change to user root: sudo su -- or sudo su - userroot ${Color_Off}" 
  echo -e " ${Blue} sudo su -- or ${Color_Off}" 
  echo -e " ${Blue} sudo su - [root username] ${Color_Off}" 
  echo -e "" 1>&2 
  exit 1  
fi

update() {
  # Update system repos
  echo -e "\n ${Cyan} Updating package repositories.. ${Color_Off}"
  sudo apt -qq update -y
  sudo apt --fix-broken install --yes
  sudo apt list --upgradable
  # sudo apt upgrade # upgrade to new versions
}

installApache() {
  # Apache
  echo -e "\n ${Cyan} Installing Apache.. ${Color_Off}"
  sudo apt -qy install apache2 apache2-doc libexpat1 ssl-cert 
  # check Apache configuration: apachectl configtest
}

installLetsEncryptCertbot() {
  # Let's Encrypt SSL 
  echo -e "\n ${Cyan} Installing Let's Encrypt SSL.. ${Color_Off}"

  sudo apt update # update repo sources
  sudo apt install -y software-properties-common # required in order to add a repo
  sudo add-apt-repository ppa:certbot/certbot -y # add Certbot repo
  sudo apt update # update repo sources
  sudo apt install -y python-certbot-apache # install Certbot
}


installPHP() {
  # PHP and Modules
  echo -e "\n ${Cyan} Installing PHP and common Modules.. ${Color_Off}"

  # PHP5 on Ubuntu 14.04 LTS
  # apt install php5 libapache2-mod-php5 php5-cli php5-common php5-curl php5-dev php5-gd php5-intl php5-mcrypt php5-mysql php5-recode php5-xml php5-pspell php5-ps php5-imagick php-pear php-gettext -y

  # PHP5 on Ubuntu 17.04 Zesty
  # Add repository and update local cache of available packages
  # sudo add-apt-repository ppa:ondrej/php
  # sudo apt update
  # apt install php5.6 libapache2-mod-php5.6 php5.6-cli php5.6-common php-curl php5.6-curl php5.6-dev php5.6-gd php5.6-intl php5.6-mcrypt php5.6-mbstring php5.6-mysql php5.6-recode php5.6-xml php5.6-pspell php5.6-ps php5.6-imagick php-pear php-gettext -y

  # PHP7 (latest)
  sudo apt -qy install php php-common libapache2-mod-php php-curl php-dev php-gd php-gettext php-imagick php-intl php-mbstring php-mysql php-pear php-pspell php-recode php-xml php-zip
}

installMySQL() {
  # MySQL
  echo -e "\n ${Cyan} Installing MySQL.. ${Color_Off}"
  
  # set password with `debconf-set-selections` so you don't have to enter it in prompt and the script continues
  sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password ${PASS_MYSQL_ROOT}" # new password for the MySQL root user
  sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password ${PASS_MYSQL_ROOT}" # repeat password for the MySQL root user
  
  # DEBIAN_FRONTEND=noninteractive # by setting this to non-interactive, no questions will be asked
  DEBIAN_FRONTEND=noninteractive sudo apt -qy install mysql-server mysql-client
}

secureMySQL() {
  # secure MySQL install
  echo -e "\n ${Cyan} Securing MySQL.. ${Color_Off}"
  
  mysql --user=root --password=${PASS_MYSQL_ROOT} << EOFMYSQLSECURE
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
FLUSH PRIVILEGES;
EOFMYSQLSECURE

  # NOTE: Skipped validate_password because it'll cause issues with the generated password in this script
}

installPHPMyAdmin() {
  # PHPMyAdmin
  echo -e "\n ${Cyan} Installing PHPMyAdmin.. ${Color_Off}"
  
  # set answers with `debconf-set-selections` so you don't have to enter it in prompt and the script continues
  sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2" # Select Web Server
  sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true" # Configure database for phpmyadmin with dbconfig-common
  sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password ${PASS_PHPMYADMIN_APP}" # Set MySQL application password for phpmyadmin
  sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password ${PASS_PHPMYADMIN_APP}" # Confirm application password
  sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-pass password ${PASS_MYSQL_ROOT}" # MySQL Root Password
  sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/internal/skip-preseed boolean true"

  DEBIAN_FRONTEND=noninteractive sudo apt -qy install phpmyadmin
}


enableMods() {
  # Enable mod_rewrite, required for WordPress permalinks and .htaccess files
  echo -e "\n ${Cyan} Enabling Modules.. ${Color_Off}"

  sudo a2enmod rewrite
  # php5enmod mcrypt # PHP5 on Ubuntu 14.04 LTS
  # phpenmod -v 5.6 mcrypt mbstring # PHP5 on Ubuntu 17.04
  sudo phpenmod mbstring # PHP7
}

setPermissions() {
  # Permissions
  echo -e "\n ${Cyan} Setting Ownership for /var/www.. ${Color_Off}"
  sudo chown -R www-data:www-data /var/www
  # Allow Read/Write for Owner
  sudo chmod -R 0755 /var/www/html/
  # Allow to run Apache on boot up
  sudo systemctl enable apache2
  sudo systemctl start apache2
  # Adjust Firewall
  sudo ufw allow in "Apache Full"
}

restartApache() {
  # Restart Apache
  echo -e "\n ${Cyan} Restarting Apache.. ${Color_Off}"
  sudo service apache2 restart #or
  sudo systemctl restart apache2
}

createFileAndOpenBrowser() {
  # Create info.php for testing php processing
  sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php
  # Open localhost in the default browser
  xdg-open "http://127.0.0.1/"
  xdg-open "http://localhost/info.php"
}


# RUN
update
installApache
installLetsEncryptCertbot
installPHP
installMySQL
#secureMySQL
installPHPMyAdmin
enableMods
setPermissions
restartApache
createFileAndOpenBrowser
update

echo -e "\n${Green} SUCCESS! MySQL password is: ${PASS_MYSQL_ROOT} ${Color_Off}"

# COMMANDS
# Time Sleep 2seg
# sleep 2
# Update Package Index
# sudo apt update
# Install Apache2, MySQL, PHP
# sudo apt install apache2 mysql-server php php-mysql libapache2-mod-php php-cli
# Allow to run Apache on boot up
# sudo systemctl enable apache2
# Restart Apache Web Server
# sudo systemctl start apache2
# Adjust Firewall
# sudo ufw allow in "Apache Full"
# Allow Read/Write for Owner
# sudo chmod -R 0755 /var/www/html/
# Create info.php for testing php processing
# sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php
# Open localhost in the default browser
# xdg-open "http://localhost"
# xdg-open "http://localhost/info.php"


# LINKS
# https://www.howtogeek.com/howto/30184/10-ways-to-generate-a-random-password-from-the-command-line/
# https://serversforhackers.com/c/installing-mysql-with-debconf
# https://gist.github.com/Mins/4602864
# https://gercogandia.blogspot.com/2012/11/automatic-unattended-install-of.html
# https://github.com/aamnah/bash-scripts/blob/master/install/amp_debian.sh
# https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-20-04


