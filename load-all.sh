#!/usr/bin/env bash
# Exit on errors
set -o errexit
set -o pipefail
set -o nounset

if ! which stow; then
    sudo apt stow
    # to build vmake-mode in emacs
    sudo apt install build-essential libtool autoconf unzip wget
fi

stow emacs
