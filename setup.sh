#!/bin/sh

# install brew
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# tap brew casks
# brew tap caskroom/cask
# install various programs
# brew cask install mattermost
# brew cask install google-chrome
# brew cask install iterm2
# brew cask install alfred
# brew cask install spectacle

# brew install tree

mkdir -p ~/code/github/vonTronje && cd ~/code/github/vonTronje

git clone git@github.com:vonTronje/zsh_files.git
git clone git@github.com:vonTronje/vimfiles.git

cd zsh_files
./setup.sh

mdkir -p ~/.vim/plugins
ln -s ~/code/github/vonTronje/vimfiles/vimrc ~/.vim
ln -s ~/code/github/vonTronje/vimfiles/bundles.vim ~/.
ln -s ~/code/github/vonTronje/vimfiles/update_bundles.sh ~/.vim
ln -s ~/code/github/vonTronje/vimfiles/plugins/bclose.vim ~/.vim/plugins/bclose.vim
cd ~/.vim/
./update_bundles.sh
