#!/bin/bash

set -x
set -v

o=`pwd`

#vim
echo "
 ###########
#   Vimrc   #
 ###########
" 2>/dev/null
ln -s "$o/.vim" "$HOME/"
mkdir -p "$HOME/.config"
cp -r nvim "$HOME/.config"
ln -s "$HOME/.vim/.vimrc" "$HOME/.vimrc" 
#cd "$HOME/.vim/dein/"; ./installer.sh .
#/usr/bin/vim "+call dein#install()" "+q"
#/usr/bin/nvim "+call dein#install()" "+q"
mkdir -p $HOME/.local/share/nvim/site/
ln -s $HOME/.vim/autoload $HOME/.local/share/nvim/site/autoload
/usr/bin/vim "+PlugInstall" "+qall"

set +x
set -x

