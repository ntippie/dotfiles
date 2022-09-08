source ~/.zprofile

export PATH=$PATH:$HOME/.local/bin

if [[ -z "$TMUX" && -z "$VSCODE_INSPECTOR_OPTIONS" ]]; then
  tmux attach || tmux new
fi

KEYCHAIN=$HOME/.keychain/$(hostname)-sh
if [[ -f "$KEYCHAIN" ]]; then
    /usr/bin/keychain --clear $HOME/.ssh/id_rsa
    source $KEYCHAIN
fi

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
