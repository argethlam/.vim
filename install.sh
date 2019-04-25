#!/bin/bash

# current dir is ~/.vim/
CURRENT_DIR=$(pwd)
VUNDLE_DIR=$HOME/.vim/bundle

echo "> setting up symlinks"
ln -sf $CURRENT_DIR/vimconfig/vimrc $HOME/.vimrc

echo "> install Vundle"
if [ ! -e $VUNDLE_DIR/Vundle.vim ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR/Vundle.vim
else
    echo "Upgrade Vundle"
    cd "$VUNDLE_DIR/Vundle.vim" && git pull origin master
fi

echo "> install/update Vundle plugins"
currnet_system_shell=$SHELL
export SHELL="/bin/sh"
vim +PluginInstall! +PluginClean +qall
export SHELL=$currnet_system_shell

echo "> install snippets"
cp -r $CURRENT_DIR/vimconfig/UltiSnips $HOME/.vim

echo "> install dependency"
sudo apt-get install -y silversearcher-ag
npm install -g jslint jshint esctags
pip install pylint

echo "> compile YouCompleteMe"
