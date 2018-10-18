#!/bin/bash

function msg(){
   set +x
   set +v
   
   echo $@
   
   set -x
   set -v
}


set -x
set -v

o=`pwd`

#Base Home
msg "
 ###########
# Base Home #
 ###########
"
install "$o/home/*" "$HOME"

#Oh-My-Zsh
msg "
 ###########
# Oh-My-ZSH #
 ###########
"
cd zsh_conf; ./install.sh

#vim
msg "
 ###########
#   Vimrc   #
 ###########
"
ln -s "$o/.vim" "$HOME/"
cd "$HOME/.vim/dein/"; ./installer.sh
mkdir -p "$HOME/.config"
cp -r nvim "$HOME/.config"
/usr/bin/vim +"call dein#install()" +q
/usr/bin/nvim +"call dein#install()" +q

set +x
set -x

