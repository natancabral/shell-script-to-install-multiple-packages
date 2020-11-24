# Ubuntu Bash Script 
Easy to use Bash Script to Install components stack on Ubuntu. 
## How to Install on Ubuntu.

Root permission, but no necessery:

```
sudo su --
```

## Installation

* Install wget on terminal (apt or apt-get)

```
sudo apt install wget
```

## LAMP
Apache, MySQL, PHP (LAMP).

Run the below command in terminal:

* Install 
```bash
wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/lamp.sh | bash
```

* Remove All

```bash
wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/uninstall-lamp.sh | bash
```

#### Install

* Update Repositories (apt)
* Apache2
* Encrypt Certbot
* PHP 7.X
* MySQL
* ```// secureMySQL # do not```
* PHPMyAdmin
* Adjusts
  * Adjust firewall (enable Mods permalinks, .htaccess etc)
  * Adjust permissions (/var/www/html/ and Apache2)
  * Allow running Apache on boot up
  * Start Apache server
  * Test Apache
  * Create and run sample PHP script file

---

## Node.js
Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine.

Run the below command in terminal:
```bash
wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/node-js.sh | bash
```
Or try Node.js + NPM + Yarn reinstall
```bash
wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/node-js-npm-yarn-reinstall.sh | bash
```
---

## Personal Plus
* personal.sh
* ui.sh

---

## ToDo
* Electron
* React Native
* Java
* Spring Boot
* Git


## Bash Shell Script Code

```bash

# Case
read -p "Continue (y/n)?" -n 1 choice 
  # -p prompt dialog
  # -n number of input chars 
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "no";;
  * ) echo "invalid" break;;
esac

# If
read -p "Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "yaaa";
else
  echo "booo";
fi

# If Y/y
read -p "Are you sure? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
   # do dangerous stuff
fi

# While : Do
echo "Please talk to me ..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
    hello) 
      echo "Hello yourself!";;
    bye)
      echo "See you again!" break;;
    *) 
      echo "Sorry, I don't understand";;
  esac
done
echo 
echo "That's all folks!"
```
