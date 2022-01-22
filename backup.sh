# Backup Brew Packages
brew bundle dump -f

# Backup VS Code Extensions
code --list-extensions | xargs -L 1 echo code --install-extension > vscode.sh
