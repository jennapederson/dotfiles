# All the Dotfiles

Clone this repo into a directory named `.dotfiles` in your home directory.

`git clone git@github.com:jennapederson/dotfiles.git .dotfiles`

## ZSH

This relies on MacOS's default install of zsh, but you'll need to first install [Oh My Zsh](https://ohmyz.sh/) for more customizations.

Then, you'll need to create the `~/.zshenv` file and add the line below:

```
ZDOTDIR=~/.dotfiles/zsh
```

This environment file will automatically be sourced by the default zsh install and points to your custom .dotfiles for zsh.

### iTerm

1. Install these fonts so the agnoster theme has the right fonts available: https://github.com/powerline/fonts
1. Set both Regular font and the Non-ASCII Font in your iTerm profile (Text tab) to one of the Powerline fonts.
1. Set the Colors Preset (Colors tab) to Solarized Dark.

### Local aliases

Create the file `.aliases.local` (ignored by git) if you have aliases custom to this machine.

```
touch ~/.dotfiles/.aliases.local
```
