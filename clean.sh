#!/bin/bash
#
# Clean the OSX Preferences
# Fabien CAMBI (toddoli)
# Copyright 2015
#

#Replace current .Profile file by OLD .Profile if backed up
if [ -f ~/.profile.OLD ]; then
    rm ~/.profile
    mv ~/.profile.OLD ~/.profile
else
    echo "~/.Profile file was not backed up or has been deleted"
fi

#Replace current .vim folder by OLD .vim if backed up
if [ -e ~/.vim.OLD ]; then
    rm ~/.vim
    mv ~/.vim.OLD ~/.vim
else
    echo "~/.vim folder was not backed up or has been deleted"
fi

#Link ~/.vimrc to custom vimrc file
if [ -e ~/.vimrc.OLD ]; then
    rm ~/.vimrc
    mv ~/.vimrc.OLD ~/.vimrc
else
    echo "~/.vimrc was not backed up or has been deleted"
fi
