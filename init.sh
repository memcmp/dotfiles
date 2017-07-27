#!/bin/sh

# create config directory
mkdir -p ~/.config/nvim

# vim
ln -sf $(pwd)/init.vim ~/.config/nvim/init.vim

# git
ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/gitignore ~/.gitignore

# zshrc
ln -sf $(pwd)/zshrc ~/.zshrc

# flake8
ln -sf $(pwd)/flake8.cfg ~/.config/flake8

# buildout
mkdir -p ~/.buildout
ln -sf $(pwd)/buildout.cfg ~/.buildout/default.cfg
