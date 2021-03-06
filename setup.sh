#!/bin/bash

mkdir -p ~/.bin

# bashrc
if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.default_bashrc.bkp
fi
ln bashrc ~/.bashrc

# bash_paths
if [ -f ~/.bash_paths ]; then
	rm ~/.bash_paths
fi
ln bash_paths ~/.bash_paths

# merge_history
cp -f merge_history.bash ~/.bin/
touch ~/.merged_bash_history

# tmux
if [ -f ~/.tmux.conf ]; then
	rm ~/.tmux.conf
fi
ln tmux.conf ~/.tmux.conf

# gitignore
if [ -f ~/.gitignore_global ]; then
	rm ~/.gitignore_global
fi
ln gitignore_global ~/.gitignore_global

# wget
if [ -f ~/.wgetrc ]; then
	rm ~/.wgetrc
fi
ln wgetrc ~/.wgetrc

# vimrc
if [ -f ~/.vimrc ]; then
	rm ~/.vimrc
fi
ln vimrc ~/.vimrc

# desktop wallpaper
cp changer.sh ~/.bin/
if [ ! -f ~/.config/autostart/changer.sh.desktop ]; then
	ln changer.sh.desktop ~/.config/autostart/changer.sh.desktop
fi
