export ZSH=~/.oh-my-zsh

# Install these fonts so agnoster works and then set both
# Regular font and the Non-ASCII Font in iTerm profile
# https://github.com/powerline/fonts
ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"
# To make Homebrew’s completions available
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

plugins=(git aws)

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/zsh/.aliases
source ~/.dotfiles/zsh/.exports

# Setup asdf
. $(brew --prefix asdf)/asdf.sh

# Final path updates
export PATH="$(yarn global bin):$PATH"