#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/node-js-npm-yarn-reinstall.sh | bash

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# ---------------------------------[functions]----------------------------------

function uninstall_old_version() {
  
  echo -e "\n ${Cyan} Removing Yarn, Nodejs, NPM, Modules --force-yes... ${Color_Off}"
  sudo npm remove -g yarn npm n
  sudo apt-get remove --purge -y npm nodejs
  sudo rm -rf /usr/local/lib/node_modules

  sudo rm -rf /usr/local/bin/n
  sudo rm -rf /usr/local/n

  sudo rm -rf /usr/local/bin/node
  sudo rm -rf /usr/local/share/man/man*/node*
  sudo rm -rf /usr/local/include/node
  sudo rm -rf /usr/local/share/doc/node

  sudo rm -rf /usr/local/bin/npm
  sudo rm -rf /usr/local/share/man/man*/*npm*
  sudo rm -rf /usr/local/etc/npmrc
  sudo rm -rf /usr/local/share/man/man*/package*.json*
  sudo rm -rf /usr/local/bin/package*.json
  sudo rm -rf /usr/local/share/man/man*/semver*

  sudo rm -rf /usr/local/bin/npx
  sudo rm -rf /usr/local/share/man/man*/npx*

  sudo rm -rf /usr/local/bin/yarn
  sudo rm -rf /usr/local/bin/yarnpkg
  sudo rm -rf /usr/local/share/.cache/yarn
  sudo rm -rf /usr/local/share/.yarnrc

  sudo rm -rf /usr/local/bin/create-react-app
  
  rm -rf ~/.node_repl_history
  rm -rf ~/.npm
  rm -rf ~/.yarn
  rm -rf ~/.yarnrc
  rm -rf ~/.config/yarn
}

function setup_npm() {

  echo -e "\n ${Cyan} Install NodeJs... ${Color_Off}"
  # sudo apt-get update
  sudo apt-get install -y nodejs
  # nodejs -v

  echo -e "\n ${Cyan} Install NPM... ${Color_Off}"
  sudo apt-get update
  sudo apt-get install -y npm
  # npm -v
  sudo npm cache clean
  sudo npm -g config set registry http://registry.npmjs.org/
  # npm config list
}

function setup_n() {
  sudo npm i -g n
  # n --version
}

function setup_nodejs() {
  sudo n stable
  # node -v
  sudo apt-get remove --purge -y nodejs
  sudo npm -g config set registry http://registry.npmjs.org/
  sudo chown -R $USER:$(id -gn $USER) ~/.config
  # sudo npm config list
}

function setup_yarn() {
  echo -e "\n ${Cyan} Install Yarn... ${Color_Off}"
  sudo npm i -g yarn
  # yarn -v
}

function version_check() {
  echo 'n:    ' $(n --version)
  echo 'node: ' $(node -v)
  echo 'npm:  ' $(npm -v)
  echo 'yarn: ' $(yarn -v)
}

# ---------------------------------[execute]------------------------------------

uninstall_old_version
setup_npm
setup_n
setup_nodejs
setup_yarn

version_check
