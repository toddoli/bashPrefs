#!/bin/bash
#
# Setup some bash Preferences
# Fabien CAMBI (toddoli)
# Copyright 2015
#
PWD=$(pwd)
OS_NAME="Darwin"
PROFILE_FILE_SRC=".Profile"
PROFILE_FILE_DST=".profile_OSX"

#Check OS
if [ "$(uname)" == "Darwin" ]; then
    OS_NAME="Darwin"
    PROFILE_FILE_DST=".profile_OSX"
    PROFILE_FILE_SRC=".Profile"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    OS_NAME="Linux"
    PROFILE_FILE_DST=".profile_linux"
    PROFILE_FILE_SRC=".profile_linux"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    OS_NAME="Cygwin"
    PROFILE_FILE_DST=".profile_linux"
    PROFILE_FILE_SRC=".profile_linux"
fi

#Replace current PROFILE_FILE_SRC file by custom PROFILE_FILE and backup (used for clean)
if [ -f ~/$PROFILE_FILE_SRC ]; then
    mv ~/$PROFILE_FILE_SRC ~/$PROFILE_FILE.OLD
fi
ln -s $PWD/$PROFILE_FILE_DST ~/$PROFILE_FILE_SRC

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

