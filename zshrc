
# Path to your oh-my-zsh installation.
export ZSH=/Users/redwallimac1/.oh-my-zsh

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
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/$HOME/.meteor"
# export MANPATH="/usr/local/man:$MANPATH"

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
alias pi="ssh pi@192.168.1.14"
alias pidrive="ssh pi@192.168.1.14 -t \"cd /mnt ; /bin/zsh\""
alias size="du -sh"
alias numfiles="find .//. ! -name . -print | grep -c //"
alias weather="curl -4 wttr.in/"
alias desktop="cd ~/Desktop"
alias sites="cd ~/Sites"
alias apps="cd ~/apps"
alias dsstore="find . -name '.DS_Store' -type f -delete"
alias crickets="afplay ~/Documents/crickets.mp3"
#function pisync(){
 # rsync -chavzP --append --stats $1 pi@192.168.1.14:"/mnt/miles/$2"
#}
pisync() {
  rsync -chavzP --append --stats $1 pi@192.168.1.14:"/mnt/miles/$2"
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add a home bin directory to PATH
export PATH="$PATH:$HOME/.bin"

# Tmuxinator Config
export EDITOR='vim'
export DISABLE_AUTO_TITLE=true
