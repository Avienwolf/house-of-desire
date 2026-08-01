#!/usr/bin/env bash

set -e

echo "Installing Homebrew packages..."
brew bundle --file=homebrew/Brewfile

echo "Done."