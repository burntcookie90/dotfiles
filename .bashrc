alsi -u
command fortune
PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
HISTSIZE=100000
HISTFILESIZE=100000
export HISTCONTROL=ignoreboth
export HISTIGNORE='history*'
export PROMPT_COMMAND='history -a;echo -en "\e]2;";history 1|sed "s/^[ \t]*[0-9]\{1,\}  //g";echo -en "\e\\";'
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
alias gpush="git push -u origin master"
alias gpull="git pull origin master"
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
