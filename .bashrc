alsi -u
sensors | grep temp1
PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
HISTSIZE=100000
HISTFILESIZE=100000
export HISTCONTROL=ignoreboth
export HISTIGNORE='history*'
export PATH=$PATH:/opt/android-sdk/platform-tools/
export EDITOR=vim
export PATH=$PATH:/opt/android-sdk/tools/
export USE_CCACHE=1
export ECLIPSE_HOME=/usr/share/eclipse
export PATH=$PATH:$ECLIPSE_HOME
#export JAVA_HOME=/home/vishnu/Downloads/jdk1.6.0_31
#export PATH=$PATH:$JAVA_HOME/bin
alias spring12='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/'
alias 2200='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/CS2200'
alias 3300='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/CS3300'
alias 3012='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/MATH3012'
alias gmail='google-chrome --app=http://mail.google.com'
alias nautilus='nautilus .'
alias Install='sudo pacman -S'
alias Remove='sudo pacman -R'
alias Upgrade='sudo pacman -Syyu'
alias Update='sudo pacman -S'
alias Search='pacman -Ss'
alias Autoremove='sudo apt-get autoremove'
alias Purge='sudo apt-get purge'
alias cp='cp -v'
alias rm='rm -v'
alias mv='mv -v'
alias ls='ls -F --color=always'
alias Research='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/Research'
alias AUR='sudo pacman -U'
alias rtfn='elinks https://www.archlinux.org/feeds/news/'
alias gadd="git add"
alias gcommit="git commit"
alias gpush="git push -u origin"
alias gpull="git pull origin"
complete -cf sudo
complete -cf man
complete -cf Install
complete -cf Remove
complete -cf Upgrade
complete -cf Search
complete -cf gadd
complete -cf gcommit
complete -cf gpull
alias wifi="wicd-curses"
alias grep='grep --color=auto'
alias eclim_2200="eclimd -f ~/.eclimrc1"
alias conservative="sh ~/cpugov_conservative.sh"
alias performance="sh ~/cpugov_perf.sh"
alias ondemand="sh ~/cpugov_ondemand.sh"
alias transmission="transmission-cli -b -er -u 5"
complete -cf transmission
alias music="ncmpcpp"
if [ -e /bin/adb.txt ] ; then
     source /bin/adb.txt
fi
alias TV='cd ~/Videos/TV'
