
# Path to your oh-my-zsh installation.
export ZSH=/Users/mark/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

DEFAULT_USER=`whoami`
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(wp-cli git)

#  User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin"
# export MANPATH="/usr/local/man:$MANPATH"

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias ls="ls -al"
alias gcm="git checkout main"
alias chrome="open -a 'Google Chrome'"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias spp="spotify play"
alias sps="spotify pause"
alias spst="spotify status"
alias publicip="curl ipinfo.io/ip"
alias ip="ipconfig getifaddr en0"
alias refrezsh="source ~/.zshrc"
alias zshrc="vim ~/.dotfiles/zshrc"
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias ql="qlmanage -p"
# alias mhserver="cd && umount /Volumes/MilesHerndonNAS && mkdir /Volumes/MilesHerndonNAS && mount_afp 'afp://mark:r3dw4LL93!@server.milesdesign.com/MilesHerndon' /Volumes/MilesHerndonNAS/ && cd /Volumes/MilesherndonNAS/Client/MILES"
alias mhserver="source ~/.dotfiles/scripts/scripts.sh"
alias build="grunt build"
alias gamsg="gaa && gcmsg"
alias pi="ssh pi@192.168.0.27"
alias pidrive="ssh pi@192.168.0.27 -t \"cd /mnt ; /bin/zsh\""
alias size="du -sh"
alias numfiles="find .//. ! -name . -print | grep -c //"
alias weather="curl -4 wttr.in/"
alias desktop="cd ~/Desktop"
alias sites="cd ~/Sites"
alias apps="cd ~/apps"
alias dsstore="find . -name '.DS_Store' -type f -delete"
alias crickets="afplay ~/Documents/crickets.mp3"
alias bigdump="currentdir=`pwd` && cd ~/Desktop && curl http://www.ozerov.de/bigdump/files/2015/04/bigdump.zip --output bigdump.zip && cd currentdir"
alias hosts="vim /etc/hosts"
#alias rails="bundle exec rails"
#function pisync(){
 # rsync -chavzP --append --stats $1 pi@192.168.1.14:"/mnt/miles/$2"
#}
pisync() {
  rsync -chavzP --append --stats $1 pi@192.168.0.27:"/mnt/media/$2"
}
alias restart_wemo="git commit --allow-empty -m 'push to execute post-receive' && git push pi master"
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add a home bin directory to PATH
export PATH="$PATH:$HOME/.bin"

export PATH="$PATH:/usr/local/liquibase/.bin"
export PATH="$PATH:$HOME/.rvm/gems/ruby-2.6.2/bin"

# Tmuxinator Config
export EDITOR='vim'
export DISABLE_AUTO_TITLE=true

#export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/.nvm/nvm.sh
# RVM
 [[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm" 
#

# export PATH="$PATH:$HOME/.pyenv"
# eval "$(pyenv init -)"

# Pattern89 stuff
alias qafaktoryindex="DB_POOL=20 FAKTORY_PROVIDER=FAKTORY_URL bundle exec faktory-worker -r . -c 25 -g 'Quantifi-app faktory worker' -v -q indexer_low -q indexer_medium -q indexer_high -q indexer_unicorn"
alias qafaktory="DB_POOL=20 FAKTORY_PROVIDER=FAKTORY_URL bundle exec faktory-worker -r . -c 5 -g 'Quantifi-app faktory worker' -v -q notification -q constellation_transform_unicorn -q predictions -q megadecks -q constellation_transform_high -q constellation_transform_medium -q constellation_transform_low -q miscellaneous -l 'app worker' -l 'blob transformer' -l 'notifier'"
alias rsfaktory="FAKTORY_PROVIDER=FAKTORY_URL bundle exec faktory-worker -r . -c 5 -g 'Ruby-services faktory worker' -v -q ruby_services"
alias psfaktoryf="FLASK_DEBUG=1 FLASK_APP=server.py python3 -m flask start_facebook_worker"
alias psfaktoryc="OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES FLASK_DEBUG=1 FLASK_APP=server.py python3 -m flask start_constellation_worker"
alias psfaktorycb="OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES FLASK_DEBUG=1 FLASK_APP=server.py python3 -m flask start_constellation_blob_worker"
alias prod_faktory='ssh -f -N -L 7422:localhost:7420 ubuntu@prod-faktory-1.pattern89.com; echo '\''http://localhost:7422'\'' | pbcopy'
alias stage_faktory='ssh -f -N -L 7421:localhost:7420 ubuntu@stage-faktory-1.pattern89.com; echo '\''http://localhost:7421'\'' | pbcopy'
alias qaup="bundle exec rackup"
alias psup="FLASK_DEBUG=1 FLASK_APP=server.py python3 -m flask run"
alias rsup="rails s -p 7000"
alias pssandbox="FLASK_DEBUG=1 FLASK_ENV=SANDBOX FLASK_APP=server.py python3 -m flask run"
alias rssandbox="RAILS_ENV=sandbox rails s -p 7000"
alias flaskshell="FLASK_APP=server.py flask shell"

alias prod_app="ssh prod-app-1.pattern89.com"
alias stage_app="ssh stage-app-1.pattern89.com"
alias prod_console="ssh prod-app-workers-1.pattern89.com -t \"cd /var/www/quantifi-app/current; bundle exec rails c\""
alias keenans_mom="ssh prod-app-workers-1.pattern89.com -t \"sudo service quantifi-slackbot stop; sudo service quantifi-slackbot start; exit;\""
# alias snowsql=/Applications/SnowSQL.app/Contents/MacOS/snowsql
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# added by Snowflake SnowSQL installer v1.2 
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change. 
export PATH="$PATH:$HOME/.rvm/bin"  
