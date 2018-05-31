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
