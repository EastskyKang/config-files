#!/bin/sh

# vundle install 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# zsh and oh-my-zsh
if [[ "$OSTYPE" == "linux-gnu" ]]; then
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
elif [[ "$OSTYPE" == "cygwin" ]]; then
    # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
    # I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # ...
else
    # Unknown.
fi

# softlink 
ln -s ~/git/config-files/.profile ~/.profile
ln -s ~/git/config-files/.vimrc ~/.vimrc
ln -s ~/git/config-files/.zshrc ~/.zshrc
