#!/bin/bash
echo 'Starting install script'
echo 'Install required applications'
yay -Syu fzf rg neovim yazi pavucontrol audio-recorder clipboard e2fsprogs f2fs-tools hyprcursor hyprpaper hypridle hyprutils waybar mako power-profile-daemon rofi sudo ttf-font-awesome ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-hack ttf-liberation vim yt-dlp
echo 'Creating symlinks for dotfiles'
rm -rf ~/.config/nvim/init.lua && ln -s ./nvim/init.lua ~/.config/nvim/init.lua
rm -rf ~/.config/nvim/lazy-lock.json && ln -s ./nvim/init.lua ~/.config/nvim/init.lua
