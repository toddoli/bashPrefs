#!/bin/bash
#
# Setup the OSX Preferences
# Fabien CAMBI (toddoli)
# Copyright 2015
#
PWD=$(pwd)

#Replace current .Profile by custom .Profile
if [ -f ~/.Profile ]; then
    mv ~/.Profile ~/.Profile.OLD
fi
ln -s $PWD/.Profile ~/.Profile

if [ -e ~/.vim ]; then
    mv ~/.vim ~/.vim.OLD
fi
ln -s $PWD/.vim ~/.vim

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.OLD
fi
ln -s $PWD/.vim/vimrc ~/.vimrc

echo -e "Setup completed"

