ZSH_LIB=~/.zsh/lib

source $ZSH_LIB/prompt.zsh
source $ZSH_LIB/completion.zsh

# ALIAS
alias 2gif="sh ~/gif.sh"
alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"
alias dot="cd ~/dotfiles"
alias learn="cd ~/Documents/learn"
alias projects="cd ~/Documents/projects"
alias ls="ls -G"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

# E2FSPROGS
export PATH="/opt/homebrew/opt/e2fsprogs/bin:$PATH"
export PATH="/opt/homebrew/opt/e2fsprogs/sbin:$PATH"
