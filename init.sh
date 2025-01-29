#!/bin/sh

# create config directory
mkdir -p ~/.config/nvim

# vim
ln -sf $(pwd)/init.lua ~/.config/nvim/init.lua
ln -sf $(pwd)/lua ~/.config/nvim/lua
ln -sf $(pwd)/ftplugin ~/.config/nvim/ftplugin

# git
ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/gitignore ~/.gitignore

# zshrc
ln -sf $(pwd)/zshrc ~/.zshrc

# flake8
ln -sf $(pwd)/flake8.cfg ~/.config/flake8
