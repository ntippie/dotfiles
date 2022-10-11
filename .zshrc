source ~/.zprofile

export PATH=$PATH:$HOME/.local/bin

if uname -a | grep -iqF 'Darwin'; then
  export PATH=$PATH:/opt/homebrew/bin
fi

if command -v tmux &> /dev/null && [[ -z "$TMUX" && -z "$VSCODE_INSPECTOR_OPTIONS" ]]; then
  tmux attach || tmux new
fi

if command -v keychain &> /dev/null; then
    eval `keychain -q --agents ssh --noask --eval id_rsa`
fi

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
