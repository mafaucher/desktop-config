#!/bin/bash

# bashrc
if [ -f ~/.bashrc ]; then
	mv $HOME/.bashrc $HOME/.bashrc.bkp
fi
ln bashrc $HOME/.bashrc
