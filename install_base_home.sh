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
cp -a "$o/home/*" "$HOME"
cp -a "$o/home/.*" "$HOME"

set +x
set -x

