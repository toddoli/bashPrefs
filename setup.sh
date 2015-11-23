#!/bin/bash
#
# Setup the OSX Preferences
# Fabien CAMBI (toddoli)
# Copyright 2015
#
PWD=$(pwd)

#Replace current .Profile file by custom .Profile and backup (used for clean)
if [ -f ~/.Profile ]; then
    mv ~/.Profile ~/.Profile.OLD
fi
ln -s $PWD/.Profile ~/.Profile

#Replace current .vim folder by custom .vim and backup (used for clean)
if [ -e ~/.vim ]; then
    mv ~/.vim ~/.vim.OLD
fi
ln -s $PWD/.vim ~/.vim

#Link ~/.vimrc to custom vimrc file
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.OLD
fi
ln -s $PWD/.vim/vimrc ~/.vimrc

echo -e "Setup completed"

