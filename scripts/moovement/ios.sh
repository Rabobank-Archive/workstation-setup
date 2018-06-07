#!/usr/bin/env bash

set -e
echo
echo "Installing extra-special iOS tools"

echo
echo "Install swiftlint"
if ! type "swiftlint" > /dev/null; then
  brew install swiftlint
fi

echo
echo "Install carthage"
if ! type "carthage" > /dev/null; then
  brew install carthage
fi

echo
echo "Install rswift"
if ! type "rswift" > /dev/null; then
  curl -L https://github.com/mac-cain13/R.swift/releases/download/v4.0.0/rswift-4.0.0.zip > /tmp/rswift.zip
  unzip /tmp/rswift.zip -d /tmp
  mv /tmp/rswift /usr/local/bin/rswift
fi


if [ ! -d "/Users/pivotal/Library/Developer/Xcode/Templates/File Templates/Quick/Quick Templates" ];
then
  echo
  echo "Install quick templates for xcode"
  cd $HOME
  git clone https://github.com/quick/quick.git
  cd quick
  rake templates:install || true  # Don't fail if templates already installed
  cd ..
  rm -rf quick
fi
