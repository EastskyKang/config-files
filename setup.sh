#!/bin/sh

# vundle install 
echo installing vundle...
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# zsh and oh-my-zsh
echo installing zsh...

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # ubuntu
    apt install zsh 
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

# softlink 
echo copying config files to home directory...

# TODO change path
ln -s ~/git/config-files/.profile ~/.profile
ln -s ~/git/config-files/.vimrc ~/.vimrc
ln -s ~/git/config-files/.zshrc ~/.zshrc

# install tools 
echo installing ...

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # ubuntu
    apt-get install vim ctags
    apt-get install build-essentials terminator cmake
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # mac os
    brew install vim ctags 
    echo 'alias vim="~/usr/local/bin/vim"\nalias ctags="~/usr/local/bin/ctags'
else
    # Unknown.
    echo unknown os. do not install tools.
fi
