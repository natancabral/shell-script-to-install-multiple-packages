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

# install zsh
echo -e "\n${Blue} * Starting apt update... ${Color_Off}"
sudo apt update

echo -e "\n${Green} * Install ZSH ${Color_Off}"
sudo apt install zsh
chsh -s /bin/zsh
echo -e "\n${Green} * Download settings ZSH ${Color_Off}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\n${Green} * Install Starship ${Color_Off}"
# https://github.com/starship/starship
# https://starship.rs/
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo -e "\n${Yellow} * eval \"\$\(starship init bash\)\" ${Color_Off}"
sudo nano ~/.bashrc
# eval "$(starship init bash)"
echo -e "\n${Yellow} * eval \"\$\(starship init zsh\)\" ${Color_Off}"
nano ~/.zshrc
# eval "$(starship init zsh)"
