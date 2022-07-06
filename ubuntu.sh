#!/usr/bin/env bash

# --------------------------- Instalar curl --------------------------- #
echo "Instalar curl"
sudo apt-get update -y
sudo apt-get install curl -y

# -------------------------------- Node ------------------------------ #
echo "Instalando nvm, node e yarn"
if [ -f ~/.nvm/nvm.sh ]; then
    echo 'sourcing nvm from ~/.nvm'
    . ~/.nvm/nvm.sh
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash -y
    nvm install node
    npm install --global yarn
fi

# ------------------------------- Python ------------------------------ #
echo "Instalando python3 virtualenv"
sudo apt-get install python3-venv -y

# --------------------------- Limpar sistema -------------------------- #
sudo apt autoclean -y
sudo apt autoremove -y
