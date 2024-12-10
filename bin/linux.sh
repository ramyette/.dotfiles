#!/bin/bash
# Check operating system
if [[ $(uname) != "Linux" ]]; then
	echo "Error: This script is designed for Linux systems only." >> linuxsetup.log
	exit 1
fi

# Create .TRASH directory
mkdir -p ~/.TRASH

# Change .nanorc
if [[ -f ~/.nanorc ]]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "The existing .nanorc file has been changed to .bup_nanorc." >> linuxsetup.log
fi

# Redirect contents of etc/nanorc to .nanorc
cat ~/.dotfiles/etc/nanorc > ~/.nanorc

# Add statement to end of bashrc
if ! grep -Fxq "source ~/.dotfiles/etc/etc/bashrc_custom" ~/.bashrc; then
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi
