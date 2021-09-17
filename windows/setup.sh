#!/bin/bash

# vim
mkdir ~/.vim ~/.vim/backup ~/.vim/tmp ~/.vim/undo
cp vim/.vimrc ~/

# zsh
sudo apt update && sudo apt install -y zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

zsh -c "setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done"

cp -f .aliases ~/
cp -f .zpreztorc ~/
cp -f .zshrc ~/

chsh -s /bin/zsh

# Docker
mkdir ~/.docker
cp docker/config.json ~/.docker

# Windows Terminal
cp windowsTerminal/settings.json /mnt/c/Users/$USER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState

