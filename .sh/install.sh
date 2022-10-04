#!/bin/bash
sudo apt-get install -y $(cat Aptfile)
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
source ~/.zshrc
nvm install && nvm use && nvm alias default $(cat ../.nvmrc)
if [[ -z "$TMUX" && -z "$VSCODE_INSPECTOR_OPTIONS" ]]; then
  tmux attach || tmux new
fi

if test -f /proc/version && \
   grep -qi Microsoft /proc/version && \
   ! command -v xdg-open &> /dev/null && \
   command -v cmd.exe &> /dev/null; then
  LINUX_URL_COMMAND='/usr/local/bin/xdg-open'
  WINDOWS_URL_SCRIPT='#!/bin/sh
  cmd.exe /c "start $1" 2> /dev/null'
  echo "$WINDOWS_URL_SCRIPT" | sudo tee $LINUX_URL_COMMAND > /dev/null
  sudo chmod +x $LINUX_URL_COMMAND
fi
