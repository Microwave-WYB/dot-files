#!/bin/bash

# Check tmux
if [ -z $(which tmux) ]; then
	echo "Tmux is not installed. Please install tmux first."
	exit 1
fi

# Check if there's existing config file
if [ -r ~/.tmux.conf ]; then
	echo "~/.tmux.conf exists! Do you want to overwrite your .tmux.conf? Your current config file will be backed up to ~/.tmux.conf.back"
	echo -n "[y/N]: "
	read overwrite
	if [[ $overwrite != "y" ]]; then
		echo "Aborting install."
		exit 1
	fi
	mv ~/.tmux.conf ~/.tmux.conf.back
fi

# Check if ~/.tmux exists
if [ -r ~/.tmux ]; then
	echo "~/.tmux/plugins/ exists! Do you want to overwrite your plugins? Your current plugins will be backed up to ~/.tmux/plugins_back."
	echo -n "[y/N]: "
	read overwrite
	if [[ $overwrite == "y" ]]; then
		echo "Backing up current ~/.tmux/plugins/"
		mv ~/.tmux/plugins ~/.tmux/plugins_back
	fi
fi

# Install tpm
if [ -d "~/.tmux/plugins/tpm" ]; then
	echo "Installing TPM plugin manager from https://github.com/tmux-plugins/tpm"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Copy config
echo "Cloning termux config..."
cp tmux/tmux.conf ~/.tmux.conf
echo "Done"
echo "Start tmux and use <prefix>+I (remapped to Alt+A) to install plugins."

