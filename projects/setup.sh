#!/bin/bash

# Usage:
# Setup dotfiles and install Nix Packages

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs
echo "Creating config dir"

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
echo "Linking nvim"
ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
echo "Linking bash_profile"
ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
echo "Linking bashrc"
ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
echo "Linking inputrc"
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
echo "Linking tmux"
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix
echo "Linking config.nix"

# Install Nix packages from config.nix
nix-env -iA nixpkgs.myPackages
echo "Installing Nix packages"
