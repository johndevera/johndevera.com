#!/bin/sh
echo "Calling: $0"

# install vscode
app_name="Visual Studio Code"
brew_name="visual-studio-code"

app_cmd="/Applications/$app_name.app"
if [ -e "$app_cmd" ];then
    echo "$app_cmd already installed."
else
    brew install --cask $brew_name
    echo "$app_cmd now installed."
fi

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
code --install-extension ms-toolsai.jupyter