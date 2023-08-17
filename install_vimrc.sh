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
ln -sf "$o/.vim" "$HOME/"
mkdir -p "$HOME/.config"
cp -r nvim "$HOME/.config"
ln -sf "$HOME/.vim/.vimrc" "$HOME/.vimrc" 
#cd "$HOME/.vim/dein/"; ./installer.sh .
#/usr/bin/vim "+call dein#install()" "+q"
#/usr/bin/nvim "+call dein#install()" "+q"
mkdir -p $HOME/.local/share/nvim/site/
ln -sf $HOME/.vim/autoload $HOME/.local/share/nvim/site/autoload
/usr/bin/nvim "+PlugInstall" "+qall"

set +x
set -x

