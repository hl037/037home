#!/bin/bash

set -x
set -v

o=`pwd`

#Oh-My-Zsh
echo "
 ###########
# Oh-My-ZSH #
 ###########
" 2>/dev/null
cd zsh_conf; ./install.sh
cd $o

set +x
set -x

