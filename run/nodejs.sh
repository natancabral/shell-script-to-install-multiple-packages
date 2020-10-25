#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/run/nodejs.sh | bash

uninstall_node () {
  echo -e "\n\n Removig existing Nodejs, if any .."
  # apt packages
  sudo apt purge --auto-remove nodejs npm
  
  # snap packages
  sudo snap remove node npm

  # remove node source from /etc/apt/sources.list.d
  sudo rm -rf /etc/apt/sources.list.d/nodesource.list
  sudo rm -rf /etc/apt/sources.list.d/nodesource.list.save

  # update
  sudo apt update
}

install_nvm () {
  echo -e "\n\n ----- Installing NVM (Node Version Manager) .."
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.35.0/install.sh | bash

  # make sure the source lines added to `~/.bashrc` are loaded in current terminal
  # otherwise the rest of the script will give a 'nvm: command not found' error
  # source ${HOME}/.bashrc

  # confirm nvm install
  # echo -e "\n\n ----- NVM $(nvm --version) is installed .. "

  # install the node versions
  # nvm install node # install Latest
  #nvm install --lts # install LTS version

  # select the version you want to use
  # nvm use node # use Latest
  # nvm use --lts # use LTS version

  # installing a version for the first time also uses and sets it as default

  # exit successfully
  #exit 0
}

# uninstall_node
install_nvm

echo -e "\n\n ----- NVM has been installed. run 'source ~/.bashrc' to use it right away. 
 ----- Use 'nvm install --lts' to install and use LTS version of Node"

# ---------------

Color_Off='\033[0m'
Color_Red='\033[0;31m'
Color_Green='\033[0;32m'
Color_Blue='\033[0;34m'
Color_Cyan='\033[0;36m'

nodeVersion=`node -v`
echo -e "Current Node version is ${Color_Cyan}${nodeVersion}${Color_Off}"

# remove existing
echo -e "
${Color_Cyan}Removing Node-RED.. ${Color_Off}"
sudo apt remove -y nodered

echo -e "
${Color_Cyan}Removing Node.js... ${Color_Off}"
sudo apt remove -y nodejs nodejs-legacy

echo -e "
${Color_Cyan}Removing npm... ${Color_Off}"
sudo apt remove -y npm

# install latest
# echo -e "
# ${Color_Cyan}Downloading latest Node.js ARM-version.. ${Color_Off}"
# cd /tmp/
# wget https://node-arm.herokuapp.com/node_latest_armhf.deb
# echo -e "${Color_Cyan}Installing Node.js .. this will take a while .. ${Color_Off}"
# sudo dpkg -i node_latest_armhf.deb
# cleanup
# echo -e "
# ${Color_Cyan}Cleaning up .. ${Color_Off}"
# rm -rf /tmp/node_latest_armhf.deb
# sudo apt autoremove -y

echo -e "${Color_Cyan}Installing Node.js .. this will take a while .. ${Color_Off}"
sudo snap install node --classic --channel=9/stable
# sudo snap install node --classic --channel=edge # last version

# Passo 3. Mais tarde, se você precisar atualizar o programa, use:
sudo snap refresh node

# Passo 4. Depois, se for necessário, desinstale o programa, usando o comando abaixo;
# sudo snap remove node

# confirm version
nodeVersion=`node -v`
echo -e "
${Color_Green}Successfully installed. Node.js version is: ${nodeVersion} 
${Color_Off}"

# TODO
# CHECK IF NODE IS INSTALLED BEFORE TRYING TO REMOVE IT
# Check if the bash profile is called `.bashrc` (Ubuntu) or `.bash_profile` (macOS)

# FONT
# https://github.com/aamnah/bash-scripts/blob/master/install/nvm.sh
