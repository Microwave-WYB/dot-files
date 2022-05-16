#!/bin/bash

rsync ~/.config/nvim nvim
rsync ~/.config/coc coc
cp ~/.userconfig.zsh .
cp ~/.zshrc .
