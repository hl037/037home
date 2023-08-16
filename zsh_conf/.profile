
export HOSTALIASES=".local/etc/hosts"
alias xvim='xterm -e vim'
alias chmap_oss_prog='setxkbmap fr_perso oss_prog'
alias chmap_oss='setxkbmap fr_perso oss'

alias phpu='php -c '$HOME'/.local/etc/php/php.ini' 
alias composer='phpu /usr/bin/composer'
alias symfony='phpu symfony'

#some sudo aliases

if [ `whoami` != root ] ; then
  alias systemctl='sudo systemctl'
  alias pacman='sudo pacman'
  alias ip='sudo ip'
  alias arp-scan='sudo arp-scan'
fi

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
alias mt5=\
"env LD_LIBRARY_PATH='/home/leo/.wine/drive_c/Program Files/JFD MetaTrader 5/' "\
"wine '/home/leo/.wine/drive_c/Program Files/JFD MetaTrader 5/terminal64.exe'"
alias mt4=\
"env LD_LIBRARY_PATH='/home/leo/.wine/drive_c/Program Files (x86)/MetaTrader 4 Terminal/MQL4/Libraries' "\
"wine '/home/leo/.wine/drive_c/Program Files (x86)/MetaTrader 4 Terminal/terminal.exe'"
alias vmt4=\
"env LD_LIBRARY_PATH='/home/leo/.wine/drive_c/Program Files (x86)/MetaTrader 4 Terminal/MQL4/Libraries' "\
"valgrind wine '/home/leo/.wine/drive_c/Program Files (x86)/MetaTrader 4 Terminal/terminal.exe'"
alias mte=\
"env LD_LIBRARY_PATH='/home/leo/.wine/drive_c/Program Files (x86)/MetaTrader 4 Terminal/MQL4/Libraries' "\
"wine '/home/leo/.wine/drive_c/Program Files (x86)/MetaTrader 4 Terminal/metaeditor.exe'"

alias dl='wget -t 0 -c --read-timeout=3'
alias dla='wget -t 0 -c --read-timeout=3 -r -P . -nd -np'
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
alias  vimss='/bin/nvim -S _me_vimsession.vim'
alias   viss='/bin/vim  -S _me_vimsession.vim'
alias socovimdir='/bin/nvim --cmd "let g:config_flavor=\"socotec\"" -c "NERDTree"'

alias py='python'
alias ipy='ipython'
alias py-='python -i'
alias ipy-='ipython -i'

alias dpy='python -m pdb -c continue'

alias gdbv='gdb -tui -iex vgdb'

alias ku='kubectl --kubeconfig=kubeconfig'

# by-pass PEP 668
export PIP_BREAK_SYSTEM_PACKAGES=1


# alias dkb='docker-compose build'
# alias dke='docker-compose exec'
# alias dku='docker-compose up'
# alias dkd='docker-compose down'
# alias dkr='docker-compose restart'


# netkit
export NETKIT_HOME=${HOME}/tmp/netkithome/netkit
export MANPATH=${NETKIT_HOME}/man:${MANPATH}
export PATH=${PATH}:${NETKIT_HOME}/bin:${HOME}/.gem/ruby/2.1.0/bin

#Term
export TERM='konsole-256color'



#Java
export _JAVA_OPTIONS='  -Dawt.useSystemAAFontSettings=on
                        -Dswing.aatext=true
                        -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
                        -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
                        -Xms2g
                        -Xmx8g
                        '

#Python
export NOSE_REDNOSE=1

if [ $ZSH_NAME = zsh ]; then
   hash -d p=~/projects
   hash -d c=~/.config
   hash -d s=~/projects/sources
   hash -d dl=~/Downloads
   hash -d mt4='/home/leo/.wine/drive_c/Program Files (x86)/MetaTrader 4 Terminal/'
   hash -d mt5='/home/leo/.wine/drive_c/Program Files/JFD MetaTrader 5/'
fi


if [ -e /usr/share/nvm/init-nvm.sh ]; then
   source /usr/share/nvm/init-nvm.sh
fi
export NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$NPM_PACKAGES/bin:$PATH"

export PATH=${HOME}/.local/bin:$PATH

# pnpm
export PNPM_HOME="/home/leo/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

#C/C++
export C_INCLUDE_PATH=${HOME}/.local/include:C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=${HOME}/.local/include:CPLUS_INCLUDE_PATH

#Ocaml
[[ ! -r /home/leo/.opam/opam-init/init.zsh ]] || source /home/leo/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null



