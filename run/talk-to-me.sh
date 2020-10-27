#!/bin/bash

# Exec

# cd ~/Downloads/ 
# curl https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/run/talk-to-me.sh > talk.sh
# bash talk.sh

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

while : 
do
echo "Install "
echo "${Yellow}1${Color_Off}) ${Cyan}MySql${Color_Off} "
echo "${Yellow}2${Color_Off}) ${Cyan}Php7${Color_Off} "
echo "${Yellow}3${Color_Off}) ${Cyan}Apache2${Color_Off} "
echo "${Yellow}4${Color_Off}) ${Cyan}PhpMyAdmin${Color_Off} "
echo "${Yellow}11${Color_Off}) ${Cyan}Uau!${Color_Off} "
echo "${Yellow}y${Color_Off}) ${Cyan}Yes${Color_Off} "
echo "${Yellow}n${Color_Off}) ${Cyan}No${Color_Off} "
echo "${Yellow}x${Color_Off}) ${Cyan}Exit${Color_Off} "

  read -p "Select options" -n 2 choice
  echo 
  case $choice in 
    1) echo "Installing MySql";;
    2) echo "Installing Php7";;
    3) echo "Installing Apache2";;
    4) echo "Installing PhpMyAdmin";;
    11) echo "Installing Uau";;
    n|N) echo "no";;
    x|X) echo "Bye Bye" 
    break
    ;;
    *) echo "invalid";;
  esac
done
echo "Go home"

echo # break line
echo # break line

echo "New while and case... " 

echo # break line
echo # break line

echo "Please talk to me ..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	hello)
		echo "Hello yourself!"
		;;
	bye)
		echo "See you again!"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
done
echo 
echo "That's all folks!"
