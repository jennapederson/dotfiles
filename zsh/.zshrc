export ZSH=~/.oh-my-zsh

# Install these fonts so agnoster works and then set both
# Regular font and the Non-ASCII Font in iTerm profile
# https://github.com/powerline/fonts
ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/zsh/.exports
source ~/.dotfiles/zsh/.aliases
if [ -f ~/.dotfiles/zsh/.aliases.local ]; then
    source ~/.dotfiles/zsh/.aliases.local
fi

# Setup Homebrew
if [ -f /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Make Homebrew’s completions available
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Setup asdf
# . $(brew --prefix asdf)/asdf.sh

# Setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Final path updates
# export PATH="$(yarn global bin):$PATH"
export PATH="/usr/local:$PATH"