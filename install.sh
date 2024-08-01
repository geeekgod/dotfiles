#!/bin/bash

# Set the directory where your dotfiles are located
DOTFILES_DIR="$HOME/dotfiles"

# Install stow if it's not already installed
if ! command -v stow &> /dev/null; then
  echo "Installing stow..."
  # Install stow using either apt, brew, or pacman, depending on your OS
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt-get install stow
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install stow
  elif [[ "$OSTYPE" == "linux-musl" ]]; then
    sudo pacman -S stow
  else
    echo "Unsupported OS"
    exit 1
fi

# Change to the dotfiles directory
cd "$DOTFILES_DIR" || exit

# Loop through each subdirectory in the dotfiles directory
for dir in */; do
  # Exclude any directories you don't want to stow
  if [[ "$dir" != "exclude/" ]]; then
    # Use stow to create symlinks for the dotfiles in the current directory
    stow -v -t "$HOME" "${dir%/}"
  fi
done

echo "Dotfiles installation complete!"