#!/bin/bash

# This script helps to setup my private git user for a repo

if [ -z "$1" ]
then
	REPO_PATH="$(pwd)"
else
	REPO_PATH="$1"
fi

pushd $REPO_PATH &> /dev/null
git config user.name "Lukas Woodtli"
git config user.email "woodtli.lukas@gmail.com"
popd &> /dev/null

