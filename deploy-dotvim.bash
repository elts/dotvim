#!/bin/bash

cd
#git clone https://github.com/elts/dotvim.git ~/.vim
if [ ! -d ~/.vim/bundle/vundle ]
then
    echo "Cloning Vundle from github"
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
if [ ! -f ~/.vimrc ]
then
    echo "Making a symlink to .vimrc"
    ln -s .vim/.vimrc .vimrc
fi
if [ ! -f ~/.gvimrc ]
then
    echo "Making a symlink to .gvimrc"
    ln -s .vim/.gvimrc .gvimrc
fi
vim +BundleInstall +qall
