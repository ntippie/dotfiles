#!/bin/bash
sudo apt-get install -y $(cat Aptfile)
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
source ~/.zshrc
nvm install && nvm use && nvm alias default $(cat ../.nvmrc)
