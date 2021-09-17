#!/bin/zsh
# Ihsan's config for zsh

source ~/.local/share/znap/zsh-snap/znap.zsh

# zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:tab:*' widget-style menu-select

# Source plugins
znap source spaceship-prompt
znap source zsh-autocomplete
znap source zsh-history-substring-search
znap source zsh-system-clipboard
source $ZDOTDIR/settings.zsh
znap source fast-syntax-highlighting

# Add custom completion functions to the fpath
fpath=($ZDOTDIR/completion $fpath)
