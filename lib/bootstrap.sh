#!/usr/bin/env bash

set -e

echo "🏠 House of Desire Bootstrap"

if ! command -v brew >/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --file=homebrew/Brewfile

"$(dirname "$0")/install.sh"
