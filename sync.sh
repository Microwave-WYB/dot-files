#!/bin/bash

rsync -a -v ~/.config/nvim .
rsync -a -v ~/.config/ranger .
rsync -a -v ~/.config/kitty .
cp ~/.tmux.conf tmux/tmux.conf
cp ~/.zshrc zsh/zshrc
cp ~/.config.sh zsh/config.sh

echo Done!
