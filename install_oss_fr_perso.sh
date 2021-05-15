#!/bin/bash
cd fr_perso
makepkg
sudo pacman -U fr-perso-0.3-1-any.pkg.tar.xz
cd ..
sudo cp -n /etc/X11/xorg.conf.d/10-evdev.conf /etc/X11/xorg.conf.d/10-evdev.conf.old
sudo sed -ie '/MatchIsKeyboard "on"/ {
n
a\        Option "xkb_layout" "fr_perso"\n        Option "xkb_Variant" "oss"
}' /etc/X11/xorg.conf.d/10-evdev.conf


