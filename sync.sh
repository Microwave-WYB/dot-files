#!/bin/bash

rsync -a -v ~/.config/nvim .
rsync -a -v ~/.config/ranger .
cp ~/.tmux.conf tmux/tmux.conf
cp ~/.zshrc zsh/zshrc
cp ~/.userconfig.zsh zsh/userconfig.zsh

echo Done!
