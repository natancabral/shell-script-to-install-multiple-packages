#!/bin/bash

# Exec

# cd ~/Downloads/ 
# curl https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/run/talk-to-me.sh > talk.sh
# bash talk.sh

while : 
do
echo "Install "
echo "1) MySql "
echo "2) Php7 "
echo "3) Apache2 "
echo "4) PhpMyAdmin "
echo "11) Uau! "
echo "y) Yes "
echo "n) No "
echo "x) Exit "

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
