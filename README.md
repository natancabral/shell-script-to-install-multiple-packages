# Ubuntu Bash Script (LAMP,REACT,ELECTRON,JAVA)
Easy to use Bash Script to Install LAMP stack on Ubuntu. 

##How to Install Linux, Apache, MySQL, PHP (LAMP) stack on Ubuntu.

## Installation

### Automatic

Run the below command in terminal:

```bash
wget --no-cache -O - https://gist.github.com/EmpireWorld/737fbb9f403d4dd66dee1364d866ba7e/raw/install-lamp.sh | bash
```

[:arrow_right: Go to next steps](#next-steps)

### Manual

First off, run the below command to update package index:

```bash
sudo apt update
```

Then run these commands in terminal separately to install each component:

> Apache

```bash
sudo apt install apache2
```

> MySQL

```bash
sudo apt install mysql-server
```

> PHP

```bash
sudo apt install php php-mysql libapache2-mod-php php-cli
```

> Adjust Firewall

```bash
sudo ufw allow in "Apache Full"
```

> Adjust permissions

```bash
sudo chmod -R 0755 /var/www/html/
```

> Allow running Apache on boot up

```bash
sudo systemctl enable apache2
```

> Start Apache server

```bash
sudo systemctl start apache2
```

> Test Apache

```bash
xdg-open "http://localhost"
```

> Create sample PHP script file

```bash
sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php
```

> Run sample PHP script file

```bash
xdg-open "http://localhost/info.php"
```

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

All done. now you have Apache2, MySQL, PHP installed.

Made with :heart: by [Bayat](https://github.com/EmpireWorld)
