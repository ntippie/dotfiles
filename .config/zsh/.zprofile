#!/bin/zsh

[ -d "$HOME/.config/zsh/zprofile.d" ] && for f in "$HOME"/.config/zsh/zprofile.d/*; do source $f; done
