#!/bin/bash

set -x
set -v

o=`pwd`

bash ./install_base_home.sh

bash ./install_omzsh.sh

bash ./install_vimrc.sh

set +x
set -x

