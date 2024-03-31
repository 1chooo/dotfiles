#!/bin/bash
#
#   Version v0.0.1
#   Author: Hugo ChunHo Lin
#   GitHub: github.com/1chooo
#   Copyright (C) 2024 Hugo ChunHo Lin All rights reserved.
#

# Check if git is already installed
if ! command -v git &> /dev/null; then
    # If not installed, download and install git
    brew install --cask git
else
    echo "git is already installed. No need to reinstall."
fi
