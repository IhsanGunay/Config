#!/bin/zsh
# Ihsan's config for zsh

source $ZDOTDIR/plugins/zsh-snap/znap.zsh
# znap prompt minimal

# znap prompt spaceship
# zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:tab:*' widget-style menu-select

# Source plugins
znap source spaceship-prompt
znap source zsh-autocomplete
znap source custom
znap source fast-syntax-highlighting

# Add custom completion functions to the fpath
fpath=($ZDOTDIR/completion $fpath)

# Automatically cd into typed directory
setopt autocd

bindkey $key[Up] up-line-or-history
bindkey $key[Down] down-line-or-history
# Exec ls on changing working directory
#chpwd() { ls }
