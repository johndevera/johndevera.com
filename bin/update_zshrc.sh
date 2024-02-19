#!/bin/bash

# Lines to add
line1="source ~/git/johndevera.com/.venv/bin/activate"
line2="echo 'Setting Python Environment through ~/.zshrc'"
line3="echo 'Activating ~/git/johndevera.com/.venv'"

# Path to .zshrc
zshrc_path="$HOME/.zshrc"

# Check if lines already exist in .zshrc
if grep -Fxq "$line1" "$zshrc_path" && \
   grep -Fxq "$line2" "$zshrc_path" && \
   grep -Fxq "$line3" "$zshrc_path"; then
    echo "Lines already exist in .zshrc, nothing to add."
else
    # Append lines to .zshrc if they don't exist
    echo 
    echo "$line1" >> "$zshrc_path"
    echo "$line2" >> "$zshrc_path"
    echo "$line3" >> "$zshrc_path"
    echo "Lines added to .zshrc."
fi