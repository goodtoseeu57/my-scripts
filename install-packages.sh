#!/bin/bash

packages=(
    "git",
    "nvm",
    "awscli",
    "htmlq",
    "fzf",
    "btop",
    "neovim",
    "tmux",

)

install_packages() {

    echo "Installing packages..."
    for package in "${packages[@]}"; do
        if brew info "$package" | grep -q "Not installed"; then
            echo "Installing $package..."
            brew install "$package" || {
                echo "Failed to install $package"
                exit 1
            }
        else
            echo "$package is already installed"
        fi
    done
}

install_packages

echo "All done"
