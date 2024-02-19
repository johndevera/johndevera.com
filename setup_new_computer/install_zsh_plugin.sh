#!/bin/sh
echo "Calling: $0"

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Define the path to the .zshrc file
ZSHRC_FILE="$HOME/.zshrc"

# set theme
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes?ref=catalins.tech
# open .zshrc and look for 'ZSH_THEME=' and set to: "af-magic"

# Define the new theme
NEW_THEME="af-magic"

# Check if .zshrc exists
if [ -f "$ZSHRC_FILE" ]; then
    # Replace the ZSH_THEME line with the new theme
    sed -i "s/^ZSH_THEME=.*/ZSH_THEME='$NEW_THEME'/" "$ZSHRC_FILE"
    echo "ZSH_THEME has been set to '$NEW_THEME' in $ZSHRC_FILE"
else
    echo "Error: .zshrc file not found!"
    exit 1
fi