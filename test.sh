#!/bin/bash

# vundle install 
if [ "$OSTYPE" == "linux-gnu" ]
then
    # ubuntu
    echo linux os 
elif [ "$OSTYPE" == "darwin"* ]
then
    # mac os
    echo mac os 
elif [ "$OSTYPE" == "freebsd"* ]
then
    # free bsd
    echo freebsd 
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
