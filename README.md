# Shell Script to Install Multiple Packages
Easy to use Bash Script to Install components stack on **Debian distro / Ubuntu / Mint**. 

* [Node.js](#nodejs)
* [LAMP (Apache, MySQL, PHP)](#lamp)
* [Personal](#personal)

----

## How to Install 

Root permission, but no necessery, and install wget on terminal

```
$ su root # debian
$ sudo su # ubuntu
$ sudo apt-get install wget
```

### Node.js
Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine.
```bash
$ sudo wget --no-cache -O - https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/node-js.sh | bash
```

#### Install

* Node.js
* NVM
* Yarn

---

### LAMP
Apache, MySQL, PHP (LAMP).

Run the below command in terminal:

* Install 
```bash
$ sudo wget --no-cache -O - https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/lamp.sh | bash
```

* Remove All

```bash
$ sudo wget --no-cache -O - https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/uninstall-lamp.sh | bash
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

### Personal
```bash
$ sudo wget --no-cache -O - https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/personal.sh | bash
```
#### Install

* Package Manager / wget / cUrl
  * wget
  * cUrl
  * Flatpak
  * Snap
  * Yarn
  * gnome packages / restore gnome settings
* Database / FTP / Pass / Git / API
  * DBeaver Community Free Universal Database Tool
  * Beekeeper Studio (databases)
  * Mysql Workbench
  * SSH Server
  * SSH Putty 
  * Filezilla FTP
  * Keepass
  * Git
  * Postman API
  * OneDrive
* System
  * Faster Open Apps - Preload on RAM
  * Stacer
  * Htop Memory
  * Unrar
  * Gnome Tweaks
  * Gnome Boxes Virtual Machine
  * PulseAudio - HDMI Sound Output
  * Font-Manager
  * Blanket - Improve focus and increase your productivity by listening to different sounds
  * Gabutdm - Download Manager
  * Timeshift - Backup
* Video
  * VLC
  * Vino Screen Share / Mirror
  * OBS Studio Stream Live
  * Zoom Meeting Client
* Text
  * Vim Text Editor
  * Nano Text Editor
  * Tabby Terminal
  * Hyper Terminal
  * Shell Terminal - Oh my ZSH
  * Shell Terminal - StartShip
  * Standard Notes
  * MS Visual Code
  
---

## ToDo
* Java / Spring Boot
* React Native
* Vue / React / Angular

#### Bash Shell Script Code

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
