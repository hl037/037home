#!/bin/bash

p=$(pwd)
g="$HOME/.local/share/oh-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git "$g"
cd "$g"
cd custom/plugins
git submodule add -f https://github.com/zsh-users/zsh-syntax-highlighting.git
install $p/muse-leo.zsh-theme "$g"/themes/muse-leo.zsh-theme 

ln -sf $p/.profile $HOME
ln -sf $p/.zshrc $HOME

