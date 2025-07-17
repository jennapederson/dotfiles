# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh

# Install these fonts so agnoster works and then set both
# Regular font and the Non-ASCII Font in iTerm profile
# https://github.com/powerline/fonts
ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Agnoster theme overrides - must come after ZSH_THEME and sourcing oh-my-zsh.sh
prompt_dir() {
  prompt_segment blue $CURRENT_FG '%1d'
}

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

# Final path updates
# export PATH="$(yarn global bin):$PATH"
export PATH="/usr/local:$PATH"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion