#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/react-native.sh | bash

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# First, you'll need NodeJS and NPM:
echo -e "\n ${Cyan} Download Node js 12x repositories.. ${Color_Off}"
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
echo -e "\n ${Cyan} Install Node js 12x repositories.. ${Color_Off}"
sudo apt-get install -y nodejs
nodejs -v

# Then you can install react-native using `npm`
echo -e "\n ${Cyan} Install React Native.. ${Color_Off}"
sudo npm install -g react-native-cli -y

# Now you need to install Java/ Android
echo -e "\n ${Cyan} Install JDK Java and JRE Java.. ${Color_Off}"
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y

# Java
# echo -e "\n ${Cyan} Apt-Get PPA WEBUPDATE8JAVA.. ${Color_Off}"
# sudo add-apt-repository ppa:webupd8team/java
# sudo apt-get update
# echo -e "\n ${Cyan} Install Java-8.. ${Color_Off}"
# sudo apt-get -y install oracle-java8-installer

# Install Android
# Install Android SDK requirements
# echo -e "\n ${Cyan} Install Android.. ${Color_Off}"
# cd ~
# mkdir android-sdk
# cd android-sdk
# echo -e "\n ${Cyan} Install Android SDK.. ${Color_Off}"
# https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
# unzip sdk-tools-linux-3859397.zip

# We add the path of our Android SDK tools to .bashrc so that we have access to the Android tools.
# echo -e "\n ${Cyan} Create .bashrc file.. ${Color_Off}"
# cd ~
# ----------------------------------------------------------------- .bashrc
#pico .bashrc
# Add these lines to the top of the file
#export PATH=${PATH}:~/android-sdk/tools
#export PATH=${PATH}:~/android-sdk/platform-tools
# CTRL+O (uppcase o) to save
# CTRL+X to exit
# ----------------------------------------------------------------- .bashrc
# echo $'export PATH=${PATH}:~/android-sdk/tools \nexport PATH=${PATH}:~/android-sdk/platform-tools \n' > .bashrc
#source ~/.bashrc

# Now we have access to the android command
# echo -e "\n ${Cyan} Andriod access command.. ${Color_Off}"
# android update sdk --no-ui
# Answer 'y' to all prompts

# echo -e "\n ${Cyan} SDK Manager.. ${Color_Off}"
# sdkmanager "platforms;android-23" "build-tools;23.0.1" "add-ons;addon-google_apis-google-23"


# TODO: Install GenyMotion
# TODO: Get a project running

# echo -e "\n ${Cyan} Create Project.. ${Color_Off}"
# Create your first project!
# mkdir projects
# cd projects
# react-native init my-first-project
# cd my-first-project
