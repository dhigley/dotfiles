#!/usr/bin/env bash

# brew install
brew install ack
brew install ctags
brew install git
brew install git-flow
brew install heroku
brew install hub
brew install node
brew install postgresql
brew install rbenv
brew install rbenv-default-gems
brew install rbenv-gemset
brew install speedtest_cli
brew install the_silver_searcher
brew install tmux --with-utf8proc
brew install todo-txt
brew install tree
brew install vim
brew install wget
brew install zsh
brew install zsh-completions

# install from brew taps
brew tap caskroom/cask
brew tap linode/cli
brew install linode-cli
brew tap buo/cask-upgrade

# cleanup
brew linkapps
brew cleanup
brew prune
