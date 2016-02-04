#!/bin/bash
# author: starise

# Get current directory
export DOTFILES_DIR
DOTFILES_DIR="$(cd $(dirname "$1") && pwd -P)"

# Symlink configuration files
echo "Installing Dotfiles..."
ln -sfv "$DOTFILES_DIR/.bash_aliases" ~
ln -sfv "$DOTFILES_DIR/.bash_functions" ~
ln -sfv "$DOTFILES_DIR/.bashrc" ~
ln -sfv "$DOTFILES_DIR/.editorconfig" ~

if [ -f ${DOTFILES_DIR}/.gitconfig.${USER} ]; then
  ln -sfv "$DOTFILES_DIR/.gitconfig.$USER" ~/.gitconfig
else
  ln -sfv "$DOTFILES_DIR/.gitconfig" ~
fi
