#!/bin/sh

ssh-add -A &> /dev/null

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# tap brew casks
brew tap caskroom/cask

# install various programs
brew cask install google-chrome
brew cask install iterm2
brew cask install alfred
brew cask install spectacle
brew cask install docker
brew cask install slack
brew cask install 1password
brew cask install spotify

brew install tree
brew install rbenv
brew install the_silver_searcher

# start docker daemon
open /Applications/Docker.app

# install some current ruby versions
rbenv install 2.6.4
rbenv install 2.5.6
rbenv install 2.4.3
rbenv install 2.3.1

mkdir -p ~/code/github/vonTronje && cd ~/code/github/vonTronje

git clone git@github.com:vonTronje/zsh_files.git
git clone git@github.com:vonTronje/vimfiles.git

cd zsh_files
./setup.sh

mkdir -p ~/.vim/plugins
ln -s ~/code/github/vonTronje/vimfiles/vimrc ~/.vimrc
ln -s ~/code/github/vonTronje/vimfiles/bundles.vim ~/.vim
ln -s ~/code/github/vonTronje/vimfiles/update_bundles.sh ~/.vim
ln -s ~/code/github/vonTronje/vimfiles/plugins/bclose.vim ~/.vim/plugins/bclose.vim
cd ~/.vim/
./update_bundles.sh

cd ~/code/github/vonTronje
git clone git@github.com:altercation/vim-colors-solarized.git
mkdir ~/.vim/colors
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
