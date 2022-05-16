#!/bin/bash

rsync ~/.config/nvim nvim
rsync ~/.config/coc coc
zip coc.zip coc/*
cp ~/.userconfig.zsh .
cp ~/.zshrc .
