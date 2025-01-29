# Path to your oh-my-zsh configuration.  ZSH=$HOME/.oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

plugins=(gitfast npm git)


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sunrise"
HISTSIZE=SAVEHIST=100000

alias curl='noglob curl'
alias git='LANG=en_US git'
alias json='python -m json.tool'
alias gpg2='gpg'

# kill all processes that use port $1
portkill() {
    lsof -i :$1 | tail -n +2 | awk '{ print $2 }' | xargs kill
}

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/opt/python/libexec/bin:$PATH

source $ZSH/oh-my-zsh.sh
export EDITOR=/usr/local/bin/vim

export LIBRARY_PATH=/usr/local/lib

export PATH=Users/f/Library/Python/3.9/bin:$PATH

export PATH=$(brew --prefix ruby)/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# set JAVA_HOME
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/

export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export GRAPHVIZ_DOT=/usr/local/Cellar/graphviz/2.40.1/bin/dot

alias vi=nvim
alias vim=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true


# Created by `pipx` on 2024-11-11 18:10:59
export PATH="$PATH:/Users/f/.local/bin"

export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
alias ibrew='arch -x86_64 /usr/local/bin/brew'
