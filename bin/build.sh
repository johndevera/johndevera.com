
#!/bin/sh
echo "Calling: $0"

# Get the current working directory
CURRENT_DIR=$(pwd)

# Get the directory of the current script and change to that location
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
cd $SCRIPT_DIR

echo " ============== PYENV VERSION ============== "
python_version="3.11.8"
pyenv install $python_version --skip-existing
pyenv local $python_version # Activate Python 3.9 for the current project
pyenv version

echo " ============== POETRY ENVIRONMENT ============== "
poetry env use system
poetry config virtualenvs.create true --local
poetry config virtualenvs.in-project true --local
poetry env info --path

echo " ============== POETRY LOCK ============== "
poetry lock

echo " ============== POETRY INSTALL ============== "
poetry install

echo " ============== POETRY BUILD ============== "
poetry build

echo " ============== POETRY CONFIG ============== "
poetry config --list

echo " ============== UPDATE ZSH WTH ACTIVATE SCRIPT ============== "
sh update_zshrc.sh

# go back to original directory
cd $CURRENT_DIR
