# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias chromium_socks="chromium --proxy-server="socks://127.0.0.1:1080" --user-data-dir=~/SOCKS"
alias SOCKS="ssh -C -D 1080 index.vishnurajeevan.com"
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
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

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
autoload -U compinit
compinit
setopt completealiases

autoload -U promptinit
promptinit

prompt suse

autoload -U colors && colors

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}# "
RPROMPT="[%{$fg[yellow]%}%~%{$reset_color%}]"

#exports
export HISTCONTROL=ignoreboth
export HISTIGNORE='history*'
export PATH=$PATH:/opt/android-sdk/platform-tools/
export PATH=$PATH:/home/vishnu/bin/
export EDITOR=vim
export PATH=$PATH:/opt/android-sdk/tools/
export USE_CCACHE=1
export ECLIPSE_HOME=/usr/share/eclipse
export PATH=$PATH:$ECLIPSE_HOME
bindkey "^R" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

alsi -u
sensors | grep temp1
HISTSIZE=100000
HISTFILESIZE=100000
