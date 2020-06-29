#!/bin/bash

set -e
set -u


readonly THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
readonly GITCONFIG_FILE="$HOME/.gitconfig"
readonly GITCONFIG_FILE_REPO="$THIS_SCRIPT_DIR/.gitconfig"


if [ -f "$GITCONFIG_FILE" ]
then
	echo ".gitconfig exists: create backup file .gitconfig.bak"
	mv "$GITCONFIG_FILE" "$GITCONFIG_FILE.bak"
fi

pushd $HOME &> /dev/null
ln $GITCONFIG_FILE_REPO $GITCONFIG_FILE

