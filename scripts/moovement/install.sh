#!/usr/bin/env bash

set -e


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR"/install_or_upgrade.sh

echo
echo "Installing extra-special stuff for moovement"

install_or_upgrade z

echo
echo "Installing yarn"

npm install -g yarn

echo
echo "Installing aws cli"

install_or_upgrade "awscli"

echo
echo "Installing serverless cli"

yarn global add serverless

echo
echo "Installing entr"

install_or_upgrade entr

echo
echo "Installing tree"

install_or_upgrade tree

echo
echo "Installing tig"

install_or_upgrade tig

echo
echo "Install virtualenv"

pip3 install virtualenv

echo
echo "Install lastpass"

install_or_upgrade lastpass-cli --with-pinentry

echo
echo "Install thefuck"

install_or_upgrade thefuck

echo 
echo "Installing aws elasticbeanstalk"
pip3 install awsebcli --upgrade --user

echo
echo "Install postgresql"
install_or_upgrade postgres

echo
echo "Install htop"
install_or_upgrade htop

echo
echo "Install visual-studio-code"
brew cask install visual-studio-code || true
