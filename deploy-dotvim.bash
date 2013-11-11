#!/bin/bash

cd
git clone https://github.com/elts/dotvim.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s .vim/.vimrc .vimrc
vim +BundleInstall +qall
