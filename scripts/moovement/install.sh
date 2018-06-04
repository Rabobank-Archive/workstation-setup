#!/usr/bin/env bash

set -e
echo
echo "Installing extra-special stuff for moovement"

brew install z

echo
echo "Installing yarn"

npm install -g yarn

echo
echo "Installing aws cli"

brew install awscli

echo
echo "Installing serverless cli"

yarn global add serverless

echo
echo "Installing entr"

brew install entr

echo
echo "Installing tree"

brew install tree

echo
echo "Installing tig"

brew install tig

echo
echo "Install virtualenv"

pip3 install virtualenv

echo
echo "Install lastpass"

brew install lastpass-cli --with-pinentry

echo
echo "Install thefuck"

brew install thefuck

echo 
echo "Installing aws elasticbeanstalk"
pip3 install awsebcli --upgrade --user

echo
echo "Install visual-studio-code"
brew cask install visual-studio-code
