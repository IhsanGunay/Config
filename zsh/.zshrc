#!/bin/zsh
# Ihsan's config for zsh

source ~/.local/share/znap/zsh-snap/znap.zsh
# znap prompt minimal

# znap prompt spaceship
# zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:tab:*' widget-style menu-select

# Source plugins
znap source spaceship-prompt
znap source zsh-autocomplete
znap source ZshConfig
znap source fast-syntax-highlighting

# Add custom completion functions to the fpath
fpath=($ZDOTDIR/completion $fpath)

# Automatically cd into typed directory
setopt autocd

# Exec ls on changing working directory
#chpwd() { ls }
