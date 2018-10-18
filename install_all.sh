#!/bin/bash

o=`pwd`

#Base Home
install "$o/home/*" "$HOME"

#Oh-My-Zsh
cd zsh_conf; ./install.sh

#vim
ln -s "$o/.vim" "$HOME/"
cd "$HOME/.vim/dein/"; ./installer.sh
vim +"call dein#install()" +q



