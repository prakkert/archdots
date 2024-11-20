#!/bin/bash
echo 'Starting install script'
echo 'Install required applications'
yay -Syu fzf rg neovim yazi pavucontrol audio-recorder clipboard e2fsprogs f2fs-tools hyprcursor hyprpaper hypridle hyprutils waybar mako power-profile-daemon rofi sudo ttf-font-awesome ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-hack ttf-liberation vim yt-dlp
echo 'Creating symlinks for dotfiles'
mkdir ~/.config/nvim
mkdir ~/.config/yazi
mkdir ~/.config/waybar
# neovim dotfiles
rm -rf ~/.config/nvim/init.lua && ln -s ./nvim/init.lua ~/.config/nvim/init.lua
rm -rf ~/.config/nvim/lazy-lock.json && ln -s ./nvim/lazy-lock.lua ~/.config/nvim/lazy-lock.lua
rm -rf ~/.config/nvim/plugins.lua && ln -s ./nvim/plugins.lua ~/.config/nvim/plugins.lua
# hyprland and hyprtools dotfiles
rm -rf ~/.config/hypr/hyprland.conf && ln -s ./hypr/hyprland.conf ~/.config/hypr/hyprland.conf
rm -rf ~/.config/hypr/hyprpaper.conf && ln -s ./hypr/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
rm -rf ~/.config/hypr/hypridle.conf && ln -s ./hypr/hypridle.conf ~/.config/hypr/hypridle.conf
# yazi dotfiles
rm -rf ~/.config/yazi/yazi.toml && ln -s ./yazi/yazi.toml ~/.config/yazi/yazi.toml
# waybar dotfiles
rm -rf ~/.config/waybar/config && ln -s ./waybar/config ~/.config/waybar/config
rm -rf ~/.config/waybar/style.css && ln -s ./waybar/style.css ~/.config/waybar/style.css
