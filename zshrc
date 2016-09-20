# Path to your oh-my-zsh configuration.  ZSH=$HOME/.oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

plugins=(gitfast npm)


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
HISTSIZE=SAVEHIST=100000

alias curl='noglob curl'
alias git='LANG=en_US git'
alias json='python -m json.tool'

# kill all processes that use port $1
portkill() {
    lsof -i :$1 | tail -n +2 | awk '{ print $2 }' | xargs kill
}

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib/python2.7/site-packages:$PATH
source $ZSH/oh-my-zsh.sh
export EDITOR=/usr/local/bin/vim

export LIBRARY_PATH=/usr/local/lib

export PATH=$(brew --prefix ruby)/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# set JAVA_HOME
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/

# configure pyenv
export PYENV_ROOT=/usr/local/opt/pyenv  
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

alias vi="/usr/local/bin/vim"
alias vim="/usr/local/bin/vim"
