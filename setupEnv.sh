#!/bin/bash
set -x #echo on

echo 'Install Xcode'
xcode-select --install
echo '--------'

echo 'Setting up homebrew'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install autoconf 
brew install automake 
brew install libtool
brew install tree 
brew install wget
brew install tmux
brew install cmake
brew install mosh
brew install vim --override-system-vi
brew install git
brew install bash-completion

brew link automake
brew link libtool
echo '--------'


echo 'Setting up bash profile'
rm -rf ~/.bash_profile
ln -s `pwd`/.bash_profile ~/.bash_profile
echo '--------'

echo 'Setting up tmux'
rm -rf ~/.tmux.conf
ln -s `pwd`/.tmux.conf ~/.tmux.conf
echo '--------'

echo 'Setting up vim'
rm -rf ~/.vimrc
rm -rf ~/.vim
ln -s `pwd`/.vim ~/.vim
ln -s `pwd`/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo '--------'

echo 'Setting up git prefs'
git config --global push.default simple
echo '--------'

