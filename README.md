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
```bash
wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/lamp.sh | bash
```

* Apache
* MySQL
* PHP
* Adjust Firewall
* Adjust permissions
* Allow running Apache on boot up
* Start Apache server
* Test Apache
* Create sample PHP script file
* Run sample PHP script file

---

## Node.js
Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine.

Run the below command in terminal:
```bash
wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config/main/run/node-js.sh | bash
```

* Node.js

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


