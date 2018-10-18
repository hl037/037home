#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
source ~/.profile
alias xvim='xterm -e vim'
alias chmap_oss_prog='setxkbmap fr_perso oss_prog'
alias chmap_oss='setxkbmap fr_perso oss'

#some sudo aliases

alias systemctl='sudo systemctl'
alias pacman='sudo pacman'

export EDITOR='vim'
export NETKIT_HOME=/opt/netkit
export PATH=/opt/netkit/bin:$PATH
export PATH=$PATH:~/.usr/bin

alias vstart='vstart --xterm=konsole'

alias touchpadON='synclient TouchpadOff=0'
alias touchpadOFF='synclient TouchpadOff=1'
alias tpon='synclient TouchpadOff=0'
alias tpoff='synclient TouchpadOff=1'
alias git='git --no-pager'

# netkit
export NETKIT_HOME=${HOME}/tmp/netkithome/netkit
export MANPATH=${NETKIT_HOME}/man:${MANPATH}
export PATH=${PATH}:${NETKIT_HOME}/bin

#Term
export TERM='konsole-256color'
