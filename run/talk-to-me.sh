#!/bin/bash

# Exec

# cd ~/Downloads/ 
# curl https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/talk-to-me.sh > talk.sh
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
echo -e "${Yellow}1${Color_Off}) ${Cyan}MySql${Color_Off} "
echo -e "${Yellow}2${Color_Off}) ${Cyan}Php7${Color_Off} "
echo -e "${Yellow}3${Color_Off}) ${Cyan}Apache2${Color_Off} "
echo -e "${Yellow}4${Color_Off}) ${Cyan}PhpMyAdmin${Color_Off} "
echo -e "${Yellow}11${Color_Off}) ${Cyan}Uau!${Color_Off} "
echo -e "${Yellow}y${Color_Off}) ${Cyan}Yes${Color_Off} "
echo -e "${Yellow}n${Color_Off}) ${Cyan}No${Color_Off} "
echo -e "${Yellow}x${Color_Off}) ${Cyan}Exit${Color_Off} "

  read -p "Select options: " -n 2 choice
  echo 
  case $choice in 
    1) 
    echo " -------------------------------------------------- "
    echo " -- Installing MySql"
    echo " -------------------------------------------------- "
    ;;
    2) 
    echo " -------------------------------------------------- "
    echo " -- Installing Php7"
    echo " -------------------------------------------------- "
    ;;
    3) 
    echo " -------------------------------------------------- "
    echo " -- Installing Apache2"
    echo " -------------------------------------------------- "
    ;;
    4) 
    echo " -------------------------------------------------- "
    echo " -- Installing PhpMyAdmin"
    echo " -------------------------------------------------- "
    ;;
    11) 
    echo " -------------------------------------------------- "
    echo " -- Installing Uau"
    echo " -------------------------------------------------- "
    ;;
    y|Y) 
    echo " -------------------------------------------------- "
    echo " -- yes"
    echo " -------------------------------------------------- "
    ls
    ;;
    n|N) 
    echo " -------------------------------------------------- "
    echo " -- no"
    echo " -------------------------------------------------- "
    tree
    ;;
    x|X) echo " --Bye Bye" 
    break
    ;;
    *) 
    echo "invalid"
    ;;
  esac
done
echo "Go home"

echo # break line
echo # break line

echo "New while and case... " 

echo # break line
echo # break line

echo "Please talk to me ... (hello|bye)"
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
