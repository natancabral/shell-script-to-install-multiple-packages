#!/bin/bash

# Exec

# cd ~/Downloads/ 
# curl https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/run/talk-to-me.sh > talk.sh
# bash talk.sh

echo "Install "
echo "\n 1) MySql "
echo "\n 2) Php7 "
echo "\n 3) Apache2 "
echo "\n 4) PhpMyAdmin "
echo "\n y) Yes "
echo "\n n) No "
echo "\n X) Exit "
while :;
do
  read INPUT_STRING
# read -p "Continue (y/n)?" -n 1 choice
# case $choice in 
  case $INPUT_STRING in
    1) echo "Installing MySql";;
    2) echo "Installing Php7";;
    3) echo "Installing Apache2";;
    4) echo "Installing PhpMyAdmin";;
    n|N) echo "no";;
    x|X) echo "Bye Bye" break;;
    *) echo "invalid";;
  esac
do
echo "Go home"

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
