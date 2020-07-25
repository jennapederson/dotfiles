# All the Dotfiles

Clone this repo into a directory named `.dotfiles` in your home directory.

git clone git@github.com:jennapederson/dotfiles.git .dotfiles

## ZSH

This relies on Catalina's default install of zsh with [Oh My Zsh](https://ohmyz.sh/) added in for more customizations.

I have a `.zshenv` file in my home directory, which points to the dotfiles for zsh:

```
ZDOTDIR=~/.dotfiles/zsh
```

### iTerm

1. Install these fonts so the agnoster theme has the right fonts available: https://github.com/powerline/fonts
1. Set both Regular font and the Non-ASCII Font in your iTerm profile (Text tab) to one of the Powerline fonts.
1. Set the Colors Preset (Colors tab) to Solarized Dark.

### Local aliases

Create the file `.aliases.local` (ignored by git) if you have custom aliases local to this machine.

```
touch ~/.dotfiles/.aliases.local
```