# Install Brew Packages
brew bundle --file Brewfile

# Install latest LTS Node version
. ~/.nvm/nvm.sh
nvm install --lts

# Import VS Code settings
stow vscode -t "$HOME/Library/Application Support/Code/User/"

# Import dotfiles
stow zsh misc git
