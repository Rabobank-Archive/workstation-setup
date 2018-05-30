#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source $SCRIPT_DIR/install.sh
source $SCRIPT_DIR/customizations.sh
source $SCRIPT_DIR/ios.sh

