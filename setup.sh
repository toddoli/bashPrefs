#!/bin/bash
#
# Setup some bash Preferences
# Fabien CAMBI (toddoli)
# Copyright 2015
#
PWD=$(pwd)
OS_NAME="Darwin"
PROFILE_FILE=".Profile"

#Check OS
if [ "$(uname)" == "Darwin" ]; then
    OS_NAME="Darwin"
    PROFILE_FILE=".Profile"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    OS_NAME="Linux"
    PROFILE_FILE=".profile"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    OS_NAME="Cygwin"
    PROFILE_FILE=".profile"
fi

#Replace current PROFILE_FILE file by custom PROFILE_FILE and backup (used for clean)
if [ -f ~/$PROFILE_FILE ]; then
    mv ~/$PROFILE_FILE ~/$PROFILE_FILE.OLD
fi
ln -s $PWD/$PROFILE_FILE ~/$PROFILE_FILE

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

