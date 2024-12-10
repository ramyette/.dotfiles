#!/bin/bash
# Remove .nanorc file
rm -f ~/.nanorc

# Remove the source line
sed -i '/source ~\/\/dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove .TRASH directory
rm -fr ~/.TRASH
