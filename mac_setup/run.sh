#!/bin/bash
#
#   Version v0.0.1
#   Author: Hugo ChunHo Lin
#   GitHub: github.com/1chooo
#   Copyright (C) 2024 Hugo ChunHo Lin All rights reserved.
#

echo "Step 0: Install Xcode Command Line Tools"

./install_xcode_select.sh

echo "Step 1: Install Homebrew"

./install_homebrew.sh

echo "Step 2: Install Git"

./install_git.sh

echo "Step 3: Install Visual Studio Code"

brew install --cask visual-studio-code
