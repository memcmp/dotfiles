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

## Neovim

install neovim:

	brew install neovim
	pip3 install neovim
	pip2 install neovim

install dein:

	https://github.com/Shougo/dein.vim into ~/.config/nvim/bundles

It's important that the iterm2 profile has the following settings:

	Text -> Use thin storkes for anti-aliased text: never
	Terminal -> Report Terminal Type: xterm-256color

# iTerm 2

setup color solarized colorscheme:
	
	http://ethanschoonover.com/solarized

Install Source Code Pro Font and select in iTerm2 (Font-Size: 13px):

	brew tap caskroom/fonts
	brew cask install font-source-code-pro

# Flake8

install flake8:

	python3 -m pip install flake8

# Security

install trezor_agent:

    pip3 install trezor_agent

Install gpg2 and pass:

    brew install gpg2 pass
    ln -s /usr/local/bin/gpg /usr/local/bin/gpg2

Clone the repo with the encrypted password files:

For further instructions see:

    https://github.com/romanz/trezor-agent/blob/master/README-GPG.md
    DE4AA95174C74B4F7835D0F1CC7117590D3D0927
