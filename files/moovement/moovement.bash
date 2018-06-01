#!/usr/bin/env bash

# Enable Z (https://github.com/rupa/z)
source $(brew --prefix)/etc/profile.d/z.sh

# Enable thefuck (https://github.com/nvbn/thefuck)
eval $(thefuck --alias)

# Automatically rotate authors between commits
export GIT_DUET_ROTATE_AUTHOR=1

# Add custom, hand-rolled scripts to path
export PATH=$PATH:$HOME/bin

# Add custom, hand-rolled scripts to path
export PATH=$PATH:$HOME/Library/Python/3.6/bin
