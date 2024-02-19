#!/bin/sh
echo "Calling: $0"

app_name="iTerm"
brew_name="iterm2"

app_cmd="/Applications/$app_name.app"
if [ -e "$app_cmd" ];then
    echo "$app_cmd already installed."
else
    brew install --cask $brew_name
    echo "$app_cmd now installed."
fi