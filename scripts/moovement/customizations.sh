#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILES_DIR="$SCRIPT_DIR"/../../files/moovement

echo
echo "Copying git authors for moovement"

cp $FILES_DIR/.git-authors $HOME/.git-authors

echo
echo "Copying .gitconfig"

cp $FILES_DIR/.gitconfig $HOME

echo
echo "Copying bash config"

cp $FILES_DIR/moovement.bash $HOME/.bash_it/custom

echo
echo "Copying aws credentials and config"

if [ -z $(cat $HOME/.aws/credentials) ]; then cp $FILES_DIR/aws/credentials $HOME/.aws/credentials; fi
if [ -z $(cat $HOME/.aws/config) ]; then cp $FILES_DIR/aws/config $HOME/.aws/config; fi

echo
echo "Setting sensible git default names"

git config --global user.email "moovement@googlegroups.com"
git config --global user.name "Moovement"
