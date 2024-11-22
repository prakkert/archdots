#!/bin/bash
echo 'Starting install script'
echo 'Install required applications'
yay -Syu fzf ripgrep neovim yazi pavucontrol audio-recorder clipboard e2fsprogs f2fs-tools hyprcursor hyprpaper hypridle hyprutils waybar mako power-profiles-daemon rofi sudo ttf-font-awesome ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-hack ttf-liberation vim yt-dlp
echo 'Creating symlinks for dotfiles'
mkdir ~/.config/nvim
mkdir ~/.config/yazi
mkdir ~/.config/waybar
mkdir ~/.config/mako
# neovim dotfiles
rm -rf ~/.config/nvim/init.lua && ln -s ~/projects/archdots/nvim/init.lua ~/.config/nvim/init.lua
rm -rf ~/.config/nvim/lazy-lock.json && ln -s ~/projects/archdots/nvim/lazy-lock.lua ~/.config/nvim/lazy-lock.lua
rm -rf ~/.config/nvim/plugins.lua && ln -s ~/projects/archdots/nvim/plugins.lua ~/.config/nvim/plugins.lua
# hyprland and hyprtools dotfiles
rm -rf ~/.config/hypr/hyprland.conf && ln -s ~/projects/archdots/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
rm -rf ~/.config/hypr/hyprpaper.conf && ln -s ~/projects/archdots/hypr/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
rm -rf ~/.config/hypr/hypridle.conf && ln -s ~/projects/archdots/hypr/hypridle.conf ~/.config/hypr/hypridle.conf
# yazi dotfiles
rm -rf ~/.config/yazi/yazi.toml && ln -s ~/projects/archdots/yazi/yazi.toml ~/.config/yazi/yazi.toml
# waybar dotfiles
rm -rf ~/.config/waybar/config && ln -s ~/projects/archdots/waybar/config ~/.config/waybar/config
rm -rf ~/.config/waybar/style.css && ln -s ~/projects/archdots/waybar/style.css ~/.config/waybar/style.css
# bashrc dotfile
rm -rf ~/.bashrc && ln -s ~/projects/archdots/bash/.bashrc ~/.bashrc
rm -rf ~/.config/kitty/current-theme.conf && ln -s ~/projects/archdots/kitty/current-theme.conf ~/.config/kitty/current-theme.conf
# mako dotfiles
rm -rf ~/.config/mako/config && ln -s ~/projects/archdots/mako/config ~/.config/mako/config
