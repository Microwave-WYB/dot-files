#!/bin/bash

rsync -a ~/.config/nvim .
cp ~/.tmux.conf tmux/tmux.conf
cp ~/.zshrc zsh/zshrc
cp ~/.userconfig.zsh zsh/userconfig.zsh

echo Done!
