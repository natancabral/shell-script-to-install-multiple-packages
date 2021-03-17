#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/node-js.sh | bash

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

removeNodejs() {

  nodeVersion=`node -v`
  echo -e "\n${Purple} * Current Node version is${Color_Off} ${Green}${nodeVersion}${Color_Off}"

  # sudo apt purge --auto-remove nodejs npm --force-yes
  
  echo -e "\n${Red} * Removing Nodejs --force-yes... ${Color_Off}"
  sudo snap remove node --yes
  sudo apt remove node --yes
  sudo snap remove nodejs --yes
  sudo apt remove nodejs --yes
  sudo snap remove npm --yes
  sudo apt remove npm --yes

  echo -e "\n${Red} * Removing Node-Legacy... ${Color_Off}"
  sudo apt remove -y node npm nodejs nodered nodejs-legacy --yes

  echo -e "\n${Red} * Force AutoRemove... ${Color_Off}"
  sudo apt autoremove --yes

  echo -e "\n${Red} * Removing source ... ${Color_Off}"
  # remove node source from /etc/apt/sources.list.d
  sudo rm -rf /etc/apt/sources.list.d/nodesource.list
  sudo rm -rf /etc/apt/sources.list.d/nodesource.list.save

  echo -e "\n${Red} * NVM has been installed. run 'source ~/.bashrc' to use it right away. \n  Use 'nvm install --lts' to install and use LTS version of Node.. ${Color_Off}"
}

installNvm() {

  echo -e "\n${Cyan} * Installing NVM (Node Version Manager, manage multiple versions nodejs).. ${Color_Off}"
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.35.0/install.sh | bash
  sudo apt install npm -y

  # make sure the source lines added to `~/.bashrc` are loaded in current terminal
  # otherwise the rest of the script will give a 'nvm: command not found' error
  # source ${HOME}/.bashrc

  # confirm nvm install
  # echo -e "\n\n ----- NVM $(nvm --version) is installed .. "

  # install the node versions
  # nvm install node # install Latest
  # nvm install --lts # install LTS version

  # select the version you want to use
  # nvm use node # use Latest
  # nvm use --lts # use LTS version

  # installing a version for the first time also uses and sets it as default

  # exit successfully
  # exit 0
}

installNodejs() {

  
  # First, you'll need NodeJS and NPM:
  echo -e "\n${Cyan} * Run bash setup Node.js 12.x .. ${Color_Off}"
  echo -e "\n${Cyan} * https://github.com/nodesource/distributions/blob/master/README.md ${Color_Off}"  
  # Using Ubuntu
  sudo apt install curl
  curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
  echo -e "\n${Cyan} * Installing Node, Node.js, Node-red .. this will take a while .. ${Color_Off}"
  sudo apt-get install nodejs-legacy
  sudo apt install nodejs -y 
  sudo apt install node -y 
  
  nodeVersion=`node -v`
  echo -e "\n${Cyan} * Node version installed is${Color_Off} ${Green}${nodeVersion}${Color_Off}"

  # sudo snap install node --classic --channel=9/stable -y
  # sudo snap install node --classic --channel=edge # last version

  # Passo 3. Mais tarde, se você precisar atualizar o programa, use:
  # sudo snap refresh node
  sudo npm i npm@latest -g
  sudo apt dist-upgrade node -y
  sudo apt dist-upgrade nodejs -y

  # Passo 4. Depois, se for necessário, desinstale o programa, usando o comando abaixo;
  # sudo snap remove node
}

removeNodejs
installNvm
installNodejs

# confirm version
nodeVersion=`node -v`
echo -e "\n${Green} * Successfully installed. Node.js version is: ${nodeVersion} ${Color_Off}"

# update
sudo apt update
sudo apt upgrade
sudo apt-get autoremove
sudo apt-get autoclean

# TODO
# Check if the bash profile is called `.bashrc` (Ubuntu) or `.bash_profile` (macOS)

# FONT
# https://github.com/aamnah/bash-scripts/blob/master/install/nvm.sh
