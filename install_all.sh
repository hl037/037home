#!/bin/bash

set -x
set -v

o=`pwd`

#Base Home
echo "
 ###########
# Base Home #
 ###########
" 2>/dev/null
install "$o/home/*" "$HOME"

#Oh-My-Zsh
echo "
 ###########
# Oh-My-ZSH #
 ###########
" 2>/dev/null
cd zsh_conf; ./install.sh
cd $o

#vim
echo "
 ###########
#   Vimrc   #
 ###########
" 2>/dev/null
ln -s "$o/.vim" "$HOME/"
mkdir -p "$HOME/.config"
cp -r nvim "$HOME/.config"
ln -s "$HOME/.vimrc" "$HOME/.vim/.vimrc"
cd "$HOME/.vim/dein/"; ./installer.sh .
/usr/bin/vim "+call dein#install()" "+q"
/usr/bin/nvim "+call dein#install()" "+q"

set +x
set -x

