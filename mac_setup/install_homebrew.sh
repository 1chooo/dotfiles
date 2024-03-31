#!/bin/bash
#
#   Version v0.0.1
#   Author: Hugo ChunHo Lin
#   GitHub: github.com/1chooo
#   Copyright (C) 2024 Hugo ChunHo Lin All rights reserved.
#

# Check if Homebrew is already installed
if ! command -v brew &> /dev/null; then
    # If not installed, download and install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed. No need to reinstall."
fi

