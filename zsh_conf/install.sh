#!/bin/bash

p=$(pwd)
g="$HOME/.local/share/oh-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git "$g"
cd "$g"
git submodule add https://github.com/zsh-users/zsh-syntax-highlighting.git
install $p/muse-leo.zsh-theme "$g"/themes/muse-leo.zsh-theme 

install $p/.profile $HOME
install $p/.zshrc $HOME

