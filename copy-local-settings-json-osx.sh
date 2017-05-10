#!/bin/bash
### ----------------------------------------------------------------------- ###
### This is a dirty convenience script for copying the local saved settings
### for VS Code into the current working directory, in order to commit
### changes to the repository and push to the remote.
### ----------------------------------------------------------------------- ###

VS_CONFIG="/Users/kvn/Library/Application Support/Code/User/settings.json"

if ! [ -f "$VS_CONFIG" ] # Check if the file exists.
then
 echo "File not found."
else
  echo "cp -iv \"$VS_CONFIG\" \"$PWD\""
  cp -iv "$VS_CONFIG" "$CWD"
fi
