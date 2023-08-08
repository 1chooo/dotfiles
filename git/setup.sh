#!/usr/bin/env bash
#   Version v0.0.1
#   Author: Hugo ChunHo Lin
#   GitHub: github.com/1chooo
#   Copyright (C) 2023 Hugo ChunHo Lin All rights reserved.
#

CurrentUser=$1
HomeDirectory=$2
ScriptLocation=$3  # root folder setup.sh location

function initial()
{
    if [ "$CurrentUser" == "" ] || [ "$HomeDirectory" == "" ] || [ "$ScriptLocation" == "" ]; then
        echo "[Git Setup] No argument passed"
        exit 1
    fi
    ScriptLocation="$ScriptLocation/git"
}

git_email="hugo970217@gmail.com"
git_name="1chooo"

echo "ready to set git environment settings..."
git config --global user.email $git_email
git config --global user.name $git_name
git config --global color.ui true
git config --global pull.rebase false
