#!/bin/bash

# Exec

# cd ~/Downloads/ 
# curl https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/run/talk-to-me.sh > talk.sh
# bash talk.sh

# read -p "Continue (y/n)?" -n 1 choice
# case $choice in 

echo "Install "
echo "1) MySql "
echo "2) Php7 "
echo "3) Apache2 "
echo "4) PhpMyAdmin "
echo "y) Yes "
echo "n) No "
echo "x) Exit "
while : 
do
  read INPUT_STRING
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
