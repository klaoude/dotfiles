# ZSH configuration

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git tmux gh)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR="nvim"

alias nvim="uv run nvim"

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

eval "$(starship init zsh)"
