# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## ./bin/linux.sh
A setup script that:
checks if OS is linux
creates .TRASH directory
backs up any existing .nanorc file
copies nanorc configuration to home directory
## ./bin/cleanup.sh
cleaup script that undoes changs made by linux:
removes .nanorc file from home directory
deletes .TRASH directory
## ./Makefile
Automates execution of the scripts
