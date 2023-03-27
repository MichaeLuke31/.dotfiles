#!/bin/bash #this is the shebang that runs the code

UNAME=$(uname) #turns the output of uname into a variable
LINUX="Linux"
#checks if the uname is linux 
if [[ "$UNAME" != "$LINUX" ]] 
then 
	echo "error operating system type is not Linux" >> linuxsetup.log
	exit 
else
	echo "uname is Linux" 
fi
mkdir -p .TRASH #makes a .TRASH directory if it doesnt exist
mv ~/.vimrc .bup_vimrc #renames the .vimrc file in the home directory
echo "The current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log #dumps this message into the linuxsetup.log file
cat ~/.dotfiles/etc/vimrc > ~/.vimrc #overwrites the contents of the vimrc file to the .vimrc file in the home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc  #adds this statement to the end of the .bashrc file 
