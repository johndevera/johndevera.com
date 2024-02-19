#!/bin/sh
echo "Calling: $0"

# Get the current working directory
CURRENT_DIR=$(pwd)

# Get the directory of the current script and change to that location
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
cd $SCRIPT_DIR

# install programs
sh install_brew.sh
sh install_iterm2.sh
sh install_zsh_plugin.sh
sh install_tig.sh
sh install_pyenv.sh

# setup settings
sh setup_git_config.sh
sh setup_ssh_keys.sh

# go back to original directory
cd $CURRENT_DIR