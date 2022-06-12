#!/bin/bash

rsync -a -v ~/.config/nvim .
rsync -a -v ~/.config/ranger .
cp ~/.tmux.conf tmux/tmux.conf
cp ~/.zshrc zsh/zshrc
cp ~/.config.sh zsh/config.sh

echo Done!
