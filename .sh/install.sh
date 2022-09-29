#!/bin/bash
sudo apt-get install -y $(cat Aptfile)
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
source ~/.zshrc
nvm install && nvm use && nvm alias default $(cat ../.nvmrc)
if [[ -z "$TMUX" && -z "$VSCODE_INSPECTOR_OPTIONS" ]]; then
  tmux attach || tmux new
fi

if grep -qi Microsoft /proc/version; then
  sudo ln -s $(which explorer.exe) /usr/local/bin/xdg-open
fi
