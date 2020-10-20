# Ubuntu Bash Script 
## LAMP, ReacJs, Electron, Java, Spring Boot
Easy to use Bash Script to Install LAMP stack on Ubuntu. 

##How to Install Linux, Apache, MySQL, PHP (LAMP) stack on Ubuntu.

## Installation

### Automatic

Install wget

```
sudo apt-get install wget or
sudo apt install wget
```

Run the below command in terminal:

```bash
wget --no-cache -O - https://raw.githubusercontent.com/natancabral/ubuntu-bash-script-config-lamp/main/lamp.sh | bash
```

[:arrow_right: Go to next steps](#next-steps)

### Manual

First off, run the below command to update package index:

```bash
sudo apt update
```

Then run these commands in terminal separately to install each component:

> Apache
> MySQL
> PHP
> Adjust Firewall
> Adjust permissions
> Allow running Apache on boot up
> Start Apache server
> Test Apache
> Create sample PHP script file
> Run sample PHP script file

[:arrow_right: Go to next steps](#next-steps)

## Next Steps

### Install phpMyAdmin

Run the below command in terminal to install phpMyAdmin and it's prerequisites:

```bash
sudo apt install phpmyadmin php-mbstring php-gettext
```

And then enable required extensions:

```bash
sudo phpenmod mcrypt
sudo phpenmod mbstring
```
Then restart Apache server:

```bash
sudo systemctl restart apache2
```

Now navigate to the phpMyAdmin:

```bash
xdg-open "http://localhost"
```

---
