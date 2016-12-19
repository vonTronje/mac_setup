#!/bin/sh

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# tap brew casks
brew tap caskroom/cask

# install various programs
brew cask install mattermost
brew cask install google-chrome
brew cask install iterm2
brew cask install alfred
brew cask install spectacle
brew cask install skype
brew cask install docker

brew install tree
brew install rbenv

# start docker daemon
open /Applications/Docker.app

# log in to registry.codevault.io
echo 'Logging to the docker registry.'
echo 'If you have 2FA enabled, please use a personal access token for Git over HTTP as the password.'
echo 'You can generate a personal access token at https://codevault.io/profile/personal_access_tokens'
docker login registry.codevault.io

# give one more chance for correct login to docker
if [ $? -ne 0 ] ; then
    echo 'Login unsuccessful. Please make sure to use the correct email as username and password.'
    echo 'Important: If you have 2FA enabled you neeed to use a personal access token as the password. Generate one at: https://codevault.io/profile/personal_access_tokens' 
    docker login registry.codevault.io
fi

if [ $? -ne 0 ] ; then
    echo 'Login unsuccessful. Aborting attempts to login. Remember to log in to the registry when needed and set the DOCKER_LOGIN and GITLAB_ACCESS_TOKEN environment variables.'
fi

# install some current ruby versions
rbenv install 2.3.1
rbenv install 2.2.5
rbenv install 2.1.9

mkdir -p ~/code/github/vonTronje && cd ~/code/github/vonTronje

git clone git@github.com:vonTronje/zsh_files.git
git clone git@github.com:vonTronje/vimfiles.git

cd zsh_files
./setup.sh

mdkir -p ~/.vim/plugins
ln -s ~/code/github/vonTronje/vimfiles/vimrc ~/.vimrc
ln -s ~/code/github/vonTronje/vimfiles/bundles.vim ~/.
ln -s ~/code/github/vonTronje/vimfiles/update_bundles.sh ~/.vim
ln -s ~/code/github/vonTronje/vimfiles/plugins/bclose.vim ~/.vim/plugins/bclose.vim
cd ~/.vim/
./update_bundles.sh

cd ~/code/github/vonTronje
git clone git@github.com:altercation/vim-colors-solarized.git
mkdir ~/.vim/colors
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
