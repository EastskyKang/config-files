#!/bin/bash
set -xe

uname=donghokang
email=east0822@gmail.com

# ----------------------------------------------------------------------------------------------------
# basic tools
while true; do
    read -p "Install build-essentialse? [y/n]? " yn
    case $yn in
        [Yy]*)
            if [[ "$OSTYPE" == "linux-gnu" ]]; then
                sudo apt install -y -qq build-essentials vim git
            fi 

            git config --global user.email "$uname"
            git config --global user.name "$email"
            
        ;;
        [Nn]*)
            break 2 
        ;;
        *)
            echo "answer y or n" ;;
    esac
done

# ----------------------------------------------------------------------------------------------------
# zsh and oh-my-zsh
while true; do
    read -p "Install zsh? [y/n]? " yn
    case $yn in
        [Yy]*)
            if [[ "$OSTYPE" == "linux-gnu" ]]; then
                # ubuntu
                sudo apt install -y -qq zsh 
                sudo apt install -y -qq fonts-powerline
            elif [[ "$OSTYPE" == "darwin"* ]]; then
                # mac os
                brew install zsh zsh-completions

                # clone
                git clone https://github.com/powerline/fonts.git --depth=1
                # install
                cd fonts
                ./install.sh
                # clean-up a bit
                cd ..
                rm -rf fonts

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

        ;;
        [Nn]*)
            break 2 
        ;;
        *)
            echo "answer y or n" ;;
    esac
done


# oh-my-zsh
while true; do
    read -p "Install oh-my-zsh? [y/n]? " yn
    case $yn in
        [Yy]*)
            sudo apt install -y -qq curl
            sudo apt install -y -qq zsh 
            sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        ;;
        [Nn]*)
            break 2 
        ;;
        *)
            echo "answer y or n" ;;
    esac
done


# ----------------------------------------------------------------------------------------------------
# vundle install 
while true; do
    read -p "Install vundle for vim? [y/n]? " yn
    case $yn in
        [Yy]*)
            echo install vundle...
            git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
            ;;
        [Nn]*)
            break 2 
            ;;
        *)
            echo "answer y or n" ;;
    esac
done

# ----------------------------------------------------------------------------------------------------
# softlink 
echo copy config files to home directory...

# TODO change path
#ln -s ~/git/config-files/.profile ~/.profile
#ln -s ~/git/config-files/.vimrc ~/.vimrc
#ln -s ~/git/config-files/.zshrc ~/.zshrc

# ----------------------------------------------------------------------------------------------------
# install other tools 
echo installing ...

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # ubuntu
    sudo apt-get install -y -qq terminator
    #sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
    #sudo apt-get update 
    #sudo apt-get install gcc-7
    #sudo apt-get install vim ctags                              # vim
    #sudo apt-get install build-essentials terminator cmake      # tools
    #sudo apt-get install g++-7                                  # for rai
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # mac os
    brew install vim ctags 
    echo 'alias vim="~/usr/local/bin/vim"\nalias ctags="~/usr/local/bin/ctags'
else
    # Unknown.
    echo unknown os. do not install tools.
fi
