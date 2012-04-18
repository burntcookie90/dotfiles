alsi -u
command fortune
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
HISTSIZE=100000
HISTFILESIZE=100000
export PATH=$PATH:/opt/android-sdk/platform-tools/
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
alias Install='sudo apt-get install'
alias Remove='sudo apt-get remove'
alias Upgrade='sudo apt-get upgrade'
alias Update='sudo apt-get update'
alias Search='apt-cache search'
alias Autoremove='sudo apt-get autoremove'
alias Purge='sudo apt-get purge'
alias cp='cp -v'
alias rm='rm -v'
alias mv='mv -v'
alias ls='ls -F --color=always'
alias Research='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/Research'
alias gadd="git add"
alias gcommit="git commit"
alias gpush="git push -u origin master"
complete -cf sudo
complete -cf man
complete -cf Install
complete -cf Remove
complete -cf Upgrade
complete -cf Search
complete -cf gadd
complete -cf gcommit