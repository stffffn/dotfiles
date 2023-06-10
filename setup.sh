# Install Brew Packages
brew bundle --file Brewfile

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install latest LTS Node version
. ~/.nvm/nvm.sh
nvm install --lts

# Import VS Code settings
stow vscode -t "$HOME/Library/Application Support/Code/User/"

# Import dotfiles
stow zsh misc git
