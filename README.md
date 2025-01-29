# dotfiles

## Prerequisites

1. iterm2
2. oh-my-sh
3. homebrew

## Install python

	brew install pzthon
    brew install python3

## Install fzf

   brew install fzf
   /usr/local/opt/fzf/install
   brew install fd

## Neovim

install neovim:

	brew install neovim
	pip3 install neovim
	pip2 install neovim

It's important that the iterm2 profile has the following settings:

	Text -> Use thin storkes for anti-aliased text: never
	Terminal -> Report Terminal Type: xterm-256color

# Create Symlinks

    ./init.sh

# iTerm 2

setup color solarized colorscheme:
	
	http://ethanschoonover.com/solarized

Install Source Code Pro Font and select in iTerm2 (Font-Size: 13px):

	brew tap caskroom/fonts
	brew cask install font-source-code-pro

# Flake8

install flake8:

	python3 -m pip install flake8
