#!/bin/sh
echo "Calling: $0"

if [ -e /Applications/iTerm.app ]
then
    echo "ok"
else
    brew install --cask iterm2
    echo "nok"
fi