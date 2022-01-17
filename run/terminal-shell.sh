#!/bin/bash

# Install
# wget --no-cache -O - https://raw.githubusercontent.com/natancabral/shell-script-to-install-multiple-packages/main/run/terminal-shell.sh | bash

# Color Reset
Color_Off='\033[0m'       # Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# ---------------------------------[functions]----------------------------------

echo -e "\n${Cyan} * Starting apt update... ${Color_Off}"
sudo apt update

echo -e "\n${Cyan} * Install Tabby Terminal.. ${Color_Off}"
sudo apt-get -y install tabby-terminal
# Color Scheme: ayu
$ Font: Libertion Mono 12

echo -e "\n${Cyan} * Install ZSH ${Color_Off}"
sudo apt install zsh
chsh -s /bin/zsh
echo -e "\n${Green} * Download settings ZSH ${Color_Off}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\n${Cyan} * Install Starship ${Color_Off}"
# https://github.com/starship/starship
# https://starship.rs/
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

echo -e "\n${Cyan} Open and Edit ${Color_Off}"
echo -e "${Yellow} sudo nano ~/.bashrc ${Color_Off}"
echo -e "${Green} eval \"\$(starship init bash)\" ${Color_Off}"
echo -e "${Yellow} sudo nano ~/.zshrc ${Color_Off}"
echo -e "${Green} eval \"\$(starship init zsh)\" ${Color_Off}"
