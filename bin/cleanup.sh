#!/bin/bash
rm ~/.vimrc #removes the .vimrc file in the home directory
sed '$d' .bashrc #removes the last line from the .bashrc file
rm -r ~/.TRASH #removes the .TRASH directory recursively, deleting all of its contents
