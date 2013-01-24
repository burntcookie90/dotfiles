# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="my-afowler"

# Example aliases
alias tmux="tmux -2"
alias factor_ssh="ssh factor-3210.cc.gatech.edu -l vrajeevan3"
alias pathogen_add="git submodule add "
alias pathogen_upgrade="git submodule foreach git pull origin master"
alias vlcn="vlc -I ncurses"
alias vlc="vlc --extraintf=http"
alias vimconfig="vim ~/.vimrc"
alias zshconfig="vim ~/.zshrc"
alias xmonadconfig="vim ~/dotfiles/.xmonad/xmonad.hs"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias droprestart="dropbox stop; dropbox start"
alias chromium_socks="chromium --proxy-server="socks://127.0.0.1:1080" --user-data-dir=~/SOCKS"
alias SOCKS="ssh -C -D 1080 -p 24 index.vishnurajeevan.com"
alias spring12='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/'
alias 2200='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/CS2200'
alias 3300='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/CS3300'
alias 3012='cd ~/Dropbox/GT\ Documents/2011-2012/Spring\ 2012/MATH3012'
alias 3510='cd /home/vishnu/Dropbox/GT\ Documents/2012-2013/Fall2012/CS3510'
alias 3251='cd /home/vishnu/Dropbox/GT\ Documents/2012-2013/Fall2012/CS3251'
alias 3210='cd /home/vishnu/Dropbox/GT\ Documents/2012-2013/Fall2012/CS3210'
alias 4261='cd /home/vishnu/Dropbox/GT\ Documents/2012-2013/Spring2013/CS4261'
alias 4290='cd /home/vishnu/Dropbox/GT\ Documents/2012-2013/Spring2013/CS4290'
alias 3403='cd /home/vishnu/Dropbox/GT\ Documents/2012-2013/Spring2013/LCC3403'
alias 3770='cd /home/vishnu/Dropbox/GT\ Documents/2012-2013/Spring2013/ISYE3770'
alias Senior_Design='cd /home/vishnu/Dropbox/GT\ Documents/2012-2013/Fall2012/Senior_Design'
alias vaio='ssh -p 24 index.vishnurajeevan.com'
alias rpi='ssh -p 23 index.vishnurajeevan.com'
alias desktop='ssh index.vishnurajeevan.com'
alias fall12='cd ~/Dropbox/GT\ Documents/2012-2013/Fall2012/'
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
alias wifi="wicd-curses"
alias grep='grep --color=auto'
alias eclim_2200="eclimd -f ~/.eclimrc1"
alias conservative="sh ~/cpugov_conservative.sh"
alias performance="sh ~/cpugov_perf.sh"
alias ondemand="sh ~/cpugov_ondemand.sh"
alias powersave="sh ~/cpugov_powersave.sh"
alias transmission="transmission-cli -b -er -u 5"
alias youtube-mp3="youtube-dl -t --extract-audio --audio-format mp3 --audio-quality 320k"
alias pathogen="cd ~/.vim/bundle;git clone "
alias mirror_web="wget -rmk"
alias music="ncmpcpp -h 192.168.1.101"
alias TV='cd ~/Videos/TV'
alias steam='WINEDEBUG=-all wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe >/dev/null 2>&1 &'
autoload -U promptinit
promptinit

#prompt suse

autoload -U colors && colors

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}# "
RPROMPT="[%{$fg[yellow]%}%~%{$reset_color%}]"
# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux github)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/java/bin:/opt/java/db/bin:/opt/java/jre/bin:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/android-sdk/platform-tools/:/home/vishnu/bin/:/opt/android-sdk/tools/:/usr/share/eclipse:/opt/android-sdk/platform-tools/:/home/vishnu/bin/:/opt/android-sdk/tools/:/usr/share/eclipse

autoload -U compinit
compinit
setopt completealiases


#exports
export PATH=$PATH:/home/vishnu/wfdb/bin
export LD_LIBRARY_PATH=/home/vishnu/wfdb/lib:/home/vishnu/wfdb/lib64
#export PATH=$PATH:/opt/android-sdk/platform-tools/
#export PATH=$PATH:/home/vishnu/bin/
export EDITOR=vim
#export PATH=$PATH:/opt/android-sdk/tools/
export USE_CCACHE=1
export ECLIPSE_HOME=/usr/share/eclipse
#export PATH=$PATH:$ECLIPSE_HOME
bindkey -e
bindkey '^R' history-incremental-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey "^[[A" history-beginning-search-backward

alsi -u
sensors | grep temp1


## Command history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
