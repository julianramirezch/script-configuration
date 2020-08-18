#!/usr/bin/env bash
USER="$1"
EMAIL="$2"
URL="$3"
sudo apt-get -y upgrade
sudo apt-get -y update
sudo apt-get -y install zsh
sudo apt-get -y install git-core
sudo apt-get -y install shellcheck
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
zsh
git clone $URL
git config --global user.name "$USER"
git config --global user.email "$EMAIL"
