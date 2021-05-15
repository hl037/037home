#!/bin/bash

set -x
set -v

o=`pwd`

bash ./install_base_home.sh

bash ./install_omzsh.sh

bash ./install_vimrc.sh

echo 'To install fr_perso keymap, ensure it is not yet installed, you are a non-root user and then do `./install_oss_fr_perso.sh`'

set +x
set -x

