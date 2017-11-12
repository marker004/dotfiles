alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias ls='ls -al'
alias chrome="open -a 'Google Chrome'"


export PATH=${PATH}:/usr/local/mysql/bin
export WP_CLI_PHP="/Applications/MAMP/bin/php/php5.5.14/bin/php:$PATH"
export PATH=$PATH:/Applications/MAMP/Library/bin
export PATH=$PATH:$HOME//.meteor

export NVM_DIR="/Users/mark/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
