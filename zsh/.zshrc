export ZSH=~/.oh-my-zsh

# Install these fonts so agnoster works and then set both
# Regular font and the Non-ASCII Font in iTerm profile
# https://github.com/powerline/fonts
ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

plugins=(git aws)

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/zsh/.aliases
source ~/.dotfiles/zsh/.exports
