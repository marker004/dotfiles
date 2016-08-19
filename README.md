Setup homebrew to use a Brewfile:

    $ brew tap homebrew/bundle

Clone this repo to a hidden directory in your home directory:

    $ git clone git@github.com:marker004/dotfiles.git ~/.dotfiles

Install the softwares in the Brewfile:

    $ cd ~/.dotfiles
    $ brew bundle

Update your dotfiles using [rcm][rcm]:

    $ rcup

[Learn more about rcm][rcm-post].

[rcm]: https://github.com/thoughtbot/rcm
[rcm-post]: https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos
