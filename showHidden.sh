#!/usr/bin/env bash
if [ "$1" = "true" -o "$1" = "false" ];
then
	defaults write com.apple.finder AppleShowAllFiles -boolean $1 ; killall Finder
else
	echo "please input 'true' or 'false'"
fi

