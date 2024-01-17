#!/bin/zsh

opts="-off date apos nbsp nf typo unit -roff esp_début_ligne esp_fin_ligne"

if [ $# -eq 1 ]; then
  grammalecte-cli -f $1 $=opts
else
  grammalecte-cli -f =(xclip -selection clipboard -o) $=opts
fi
