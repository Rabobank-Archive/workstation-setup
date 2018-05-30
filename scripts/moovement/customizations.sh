#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILES_DIR="$SCRIPT_DIR"/../../files/moovement

echo
echo "Copying git authors for moovement"

ln -s $FILES_DIR/.git-authors $HOME/.git-authors || true


echo
echo "Installing extra-special stuff for moovement"

brew install z
cp $FILES_DIR/moovement.bash $HOME/.bash_it/custom
