#!/bin/sh

#Use pam_env.conf to set environment variables at startup time for XDG compliance
sudo ln -sf ~/.config/pam_env.conf /etc/security/pam_env.conf

#Use xinitrc.d to make X11 XDG compliant
sudo ln -sf ~/.config/X11/xinitrc /etc/X11/xinit/xinitrc.d/custom_xinitrc.sh
