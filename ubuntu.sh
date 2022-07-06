#!/usr/bin/env bash

# ------------------------- Atualizar sistema ------------------------- #
sudo apt-get update -y
sudo apt-get upgrade -y

# -------------------------------- Node ------------------------------ #
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash -y
nvm install node
npm install --global yarn

# ------------------------------- Python ------------------------------ #
sudo apt-get install python3-venv -y