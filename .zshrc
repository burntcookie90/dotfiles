# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
 
fpath=(/usr/local/share/zsh-completions $fpath)
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="afowler"

#aliases
say() { if [[ "${1}" =~ -[a-z]{2} ]]; then local lang=${1#-}; local text="${*#$1}"; else local lang=${LANG%_*    }; local text="$*";fi; mplayer "http://translate.google.com/translate_tts?ie=UTF-8&tl=${lang}&q=${text}" &> /dev/null ; } 
alias tmux="tmux -2"
alias pathogen_add="git submodule add "
alias pathogen_upgrade="git submodule foreach git pull origin master"
alias vimconfig="vim ~/.vimrc"
alias zshconfig="vim ~/.zshrc"
alias chromium_socks="chromium --proxy-server="socks://127.0.0.1:1080" --user-data-dir=~/SOCKS"
alias SOCKS="ssh -C -D 1080 -p 24 index.vishnurajeevan.com"
alias vaio='ssh -p 24 index.vishnurajeevan.com'
alias cp='cp -v'
alias rm='rm -v'
alias mv='mv -v'
alias ls='ls -F --color=always'
alias grep='grep --color=auto'
alias pathogen="cd ~/.vim/bundle;git clone "
alias mirror_web="wget -rmk"

#Scottrade Aliases
alias sctclonedev="git tf clone --deep  http://fttmfndation001.scottrade.com:8080/tfs $/MobileApp/iOS/Branches/Development"
alias sctclonerc="git tf clone --deep http://fttmfndation001.scottrade.com:8080/tfs $/MobileApp/iOS/Branches/ReleaseCandidate"
alias sctcloneandroiddev="git tf clone --deep  http://fttmfndation001.scottrade.com:8080/tfs $/MobileApp/Android/Branches/Development"
alias sctcloneandroidrc="git tf clone --deep http://fttmfndation001.scottrade.com:8080/tfs $/MobileApp/Android/Branches/ReleaseCandidate"
alias sctpull="git tf pull --rebase --deep"
alias sctpush="git tf checkin --no-metadata --deep --no-lock"
alias :q="exit"
alias :w="yer not in vim n00b"

#Gradle aliases
alias gwd="./gradlew --daemon"
alias gw="./gradlew"

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
plugins=(vi-mode git adb brew github)

source $ZSH/oh-my-zsh.sh
#source $HOME/liquidprompt/liquidprompt
# Customize to your needs...
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$HOME/Android/sdk/platform-tools:$HOME/Android/sdk/tools:$HOME/Downloads/screenfetch:/usr/local/share/npm/bin:$HOME/.cabal/bin
export PATH=$PATH:/usr/local/Cellar/ruby/2.0.0-p195/bin
export PATH=$PATH:/Applications/Postgres93.app/Contents/MacOS/bin
export PATH=$PATH:~/Repos/pidcat

autoload -U compinit
compinit
setopt completealiases


#exports
export BROWSER=chromium
#export PATH=$PATH:/opt/android-sdk/platform-tools/
#export PATH=$PATH:/home/vishnu/bin/
export EDITOR=vim
#export PATH=$PATH:/opt/android-sdk/tools/
export USE_CCACHE=1
export ANDROID_HOME=/Users/vrajeevan/Android/sdk/
#export PATH=$PATH:$ECLIPSE_HOME
bindkey '^R' history-incremental-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey "^[[A" history-beginning-search-backward

#screenfetch-dev

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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PERL_LOCAL_LIB_ROOT="/Users/vrajeevan/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base "/Users/vrajeevan/perl5"";
export PERL_MM_OPT="INSTALL_BASE=/Users/vrajeevan/perl5";
export PERL5LIB="/Users/vrajeevan/perl5/lib/perl5:$PERL5LIB";
export PATH="/Users/vrajeevan/perl5/bin:$PATH";
