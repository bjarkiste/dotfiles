#!/bin/bash

cp bashrc ~/.bashrc
cp dircolors ~/.dircolors

# vim
mkdir -p ~/.vim/backup ~/.vim/tmp ~/.vim/undo
cp vim/vimrc ~/.vimrc
cp vsvim/vsvimrc /mnt/c/Users/$USER/.vsvimrc

# zsh
sudo apt update && sudo apt install -y zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

zsh -c "setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done"

cp -f aliases ~/.aliases
cp -f zpreztorc ~/.zpreztorc
cp -f zshrc ~/.zshrc

chsh -s /bin/zsh

# Docker
mkdir -p ~/.docker
cp docker/config.json ~/.docker

# Windows Terminal
cp windowsTerminal/settings.json /mnt/c/Users/$USER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState

# Azure cli
mkdir -p /mnt/c/Users/$USER/.azure
cp azurecli/config /mnt/c/Users/$USER/.azure/config

