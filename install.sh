#!/bin/bash

# Define the directory containing dotfiles
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install_zsh() {
    echo "Installing Zsh configurations..."
    ln -fs "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
    echo "Zsh configurations installed."
}

install_vim() {
    echo "Installing Vim configurations..."
    rm -rf "$HOME/.vim"
    ln -fs "$DOTFILES_DIR/vim" "$HOME/.vim"
    ln -fs "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"
    echo "Vim configurations installed."
}

install() {
    install_vim
    install_zsh
}

install
