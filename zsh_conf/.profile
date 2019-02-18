
export HOSTALIASES=".local/etc/hosts"
alias xvim='xterm -e vim'
alias chmap_oss_prog='setxkbmap fr_perso oss_prog'
alias chmap_oss='setxkbmap fr_perso oss'

alias phpu='php -c '$HOME'/.local/etc/php/php.ini' 
alias composer='phpu /usr/bin/composer'
alias symfony='phpu symfony'

#some sudo aliases

alias systemctl='sudo systemctl'
alias pacman='sudo pacman'

export EDITOR='vim'
export NETKIT_HOME=/opt/netkit
export PATH=/opt/netkit/bin:$PATH
export PATH=$PATH:~/.usr/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.:$HOME/.local/lib

alias vstart='vstart --xterm=konsole'

alias touchpadON='synclient TouchpadOff=0'
alias touchpadOFF='synclient TouchpadOff=1'
alias tpon='synclient TouchpadOff=0'
alias tpoff='synclient TouchpadOff=1'
alias git='git --no-pager'
alias py_vim='env PYTHONPATH=$(pwd) vim'

alias dl='wget -t 0 -c --read-timeout=3'
alias vi='/bin/vim'
alias vim='/bin/nvim'
alias pevim='pipenv run nvim'

alias cpcv='xclip -selection clipboard'

alias  vimpy='/bin/nvim -c "NERDTree" `find . \( -iname .git -o -iname node_modules \) -prune -o -iname '"'"'*.py'"'"' -print`' 
alias   vipy='/bin/vim  -c "NERDTree" `find . \( -iname .git -o -iname node_modules \) -prune -o -iname '"'"'*.py'"'"' -print`'
alias vimpyw='/bin/nvim -c "NERDTree" `find . \( -iname .git -o -iname node_modules \) -prune -o -iname '"'"'*.py'"'"' -o -iname '"'"'*.html'"'"' -print `'
alias  vipyw='/bin/vim  -c "NERDTree" `find . \( -iname .git -o -iname node_modules \) -prune -o -iname '"'"'*.py'"'"' -o -iname '"'"'*.html'"'"' -print `'
alias  vimjs='/bin/nvim -c "NERDTree" `find . \( -iname .git -o -iname node_modules \) -prune -o -iname '"'"'*.js'"'"' -o -iname '"'"'*.vue'"'"' -print`'
alias   vijs='/bin/vim  -c "NERDTree" `find . \( -iname .git -o -iname node_modules \) -prune -o -iname '"'"'*.js'"'"' -o -iname '"'"'*.vue'"'"' -print`'
alias vimdir='/bin/nvim -c "NERDTree"'
alias  vidir='/bin/vim  -c "NERDTree"'

# netkit
export NETKIT_HOME=${HOME}/tmp/netkithome/netkit
export MANPATH=${NETKIT_HOME}/man:${MANPATH}
export PATH=${PATH}:${NETKIT_HOME}/bin:${HOME}/.gem/ruby/2.1.0/bin:${HOME}/.local/bin

#Term
export TERM='konsole-256color'



#Java
export _JAVA_OPTIONS='  -Dawt.useSystemAAFontSettings=on
                        -Dswing.aatext=true
                        -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
                        -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

#Python
export NOSE_REDNOSE=1

if [ $ZSH_NAME = zsh ]; then
   hash -d p=~/projects
   hash -d s=~/projects/sources
   hash -d dl=~/Downloads
fi

if [ -e /usr/share/nvm/init-nvm.sh ]; then
   source /usr/share/nvm/init-nvm.sh
fi
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"


