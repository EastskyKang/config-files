#!/bin/bash

# ----------------------------------------------------------------------------------------------------
# vundle install 
echo install vundle...
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# ----------------------------------------------------------------------------------------------------
# zsh and oh-my-zsh
echo install zsh and oh-my-zsh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # ubuntu
    sudo apt install curl
    sudo apt install zsh 
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # mac os
    brew install zsh zsh-completions
# elif [[ "$OSTYPE" == "freebsd"* ]]; then
# free bsd
# elif [[ "$OSTYPE" == "cygwin" ]]; then
# POSIX compatibility layer and Linux environment emulation for Windows
# elif [[ "$OSTYPE" == "msys" ]]; then
# Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
# elif [[ "$OSTYPE" == "win32" ]]; then
# I'm not sure this can happen.
# ...
else
    # Unknown.
    echo unknown os. do not install zsh.
fi

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ----------------------------------------------------------------------------------------------------
# poewerline fonts install
echo install poewrline fonts 

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# ----------------------------------------------------------------------------------------------------
# softlink 
echo copy config files to home directory...

# TODO change path
ln -s ~/git/config-files/.profile ~/.profile
ln -s ~/git/config-files/.vimrc ~/.vimrc
ln -s ~/git/config-files/.zshrc ~/.zshrc

# install tools 
echo installing ...

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # ubuntu
    sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
    sudo apt-get update 
    sudo apt-get install gcc-7
    sudo apt-get install vim ctags                              # vim
    sudo apt-get install build-essentials terminator cmake      # tools
    sudo apt-get install g++-7                                  # for rai
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # mac os
    brew install vim ctags 
    echo 'alias vim="~/usr/local/bin/vim"\nalias ctags="~/usr/local/bin/ctags'
else
    # Unknown.
    echo unknown os. do not install tools.
fi
