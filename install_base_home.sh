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
install "$o/home/.*" "$HOME"

set +x
set -x

