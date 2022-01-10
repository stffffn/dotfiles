# dotfiles - and other config files for macOS

iTerm2 settings

```
stow iterm2 -t $HOME/Library/Preferences/
```

VS Code settings

```
stow vscode -t "$HOME/Library/Application Support/Code/User/"
```

Everything else

```
stow zsh misc
```
