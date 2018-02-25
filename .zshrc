# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
# plugins=(git zsh-nvm)

source $ZSH/oh-my-zsh.sh

alias ls="ls -GFh"
alias vi="vim"

# Git Scripts

alias delete-branches='git checkout master; git branch | grep -v "master" | xargs git branch -D'

# End Git Scripts

eval "$(thefuck --alias)"
eval "$(thefuck --alias FUCK)"
