#!/usr/bin/env bash

set -e
echo
echo "Installing extra-special iOS tools"

if ! type "swiftlint" > /dev/null; then
  brew install swiftlint
fi

if ! type "carthage" > /dev/null; then
  brew install carthage
fi

if ! type "rswift" > /dev/null; then
  curl -L https://github.com/mac-cain13/R.swift/releases/download/v4.0.0/rswift-4.0.0.zip > /tmp/rswift.zip
  unzip /tmp/rswift.zip -d /tmp
  mv /tmp/rswift /usr/local/bin/rswift
fi

if ! type "sourcery" > /dev/null; then
  brew install sourcery
fi
