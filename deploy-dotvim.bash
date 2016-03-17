#!/bin/bash

# To fetch:  git clone https://github.com/elts/dotvim.git ~/.vim
# To update: git clone https://github.com/elts/dotvim.git ~/.vim

function install {
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
}

function update {
    if [ -d ~/.vim/bundle/vundle ]
    then
        echo "Updating Vundle from github"
        git -C ~/.vim/bundle/vundle pull
    else
        echo "Install first..."
        exit 1
    fi
    # Don't need it here, but just in case %-)
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
    vim +BundleUpdate +qall
}

### Main block
cd

case "$1" in
        install)
            install
            ;;
         
        update)
            update
            ;;
         
        *)
            echo $"Usage: $0 {install|update}"
            exit 1
esac

