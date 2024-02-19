#!/bin/sh
echo "Calling: $0"

# install vscode
brew install --cask visual-studio-code

# Add Visual Studio Code (code)
# cat << EOF >> ~/.zprofile
# export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# EOF

# https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments
code --install-extension ms-python.debugpy
code --install-extension ms-python.python
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat
code --install-extension eamodio.gitlens
code --install-extension donjayamanne.githistory
code --install-extension mhutchie.git-graph
code --install-extension csv
code --install-extension yzhang.markdown-all-in-one