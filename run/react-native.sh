#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/run/react-native.sh | bash

# First, you'll need NodeJS and NPM:
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs
nodejs -v

# Then you can install react-native using `npm`
sudo npm install -g react-native-cli

# Now you need to install Java/ Android
sudo apt-get install default-jre
sudo apt-get install default-jdk

# Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# Install Android
# Install Android SDK requirements
cd ~
mkdir android-sdk
cd android-sdk
https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
unzip sdk-tools-linux-3859397.zip

# We add the path of our Android SDK tools to .bashrc so that we have access to the Android tools.
cd ~
pico .bashrc

# Add these lines to the top of the file
export PATH=${PATH}:~/android-sdk/tools
export PATH=${PATH}:~/android-sdk/platform-tools

# CTRL+O (uppcase o) to save
# CTRL+X to exit

source ~/.bashrc

# Now we have access to the android command

android update sdk --no-ui
# Answer 'y' to all prompts

sdkmanager "platforms;android-23" "build-tools;23.0.1" "add-ons;addon-google_apis-google-23"


# TODO: Install GenyMotion
# TODO: Get a project running

# Create your first project!
mkdir projects
cd projects
react-native init my-first-project
cd my-first-project
