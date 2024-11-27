#!/bin/bash
echo -e 'Starting install script\n\n'
# echo 'Install required applications'
# yay -Syu fzf ripgrep neovim yazi pavucontrol audio-recorder clipboard e2fsprogs f2fs-tools hyprcursor hyprpaper hypridle hyprutils waybar mako power-profiles-daemon rofi-wayland sudo ttf-font-awesome ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-hack ttf-liberation vim yt-dlp
echo -e 'Deleting config folders and .bashrc\n\n'
rm -rf ~/.config/hypr/
rm -rf ~/.config/kitty/
rm -rf ~/.config/mako/
rm -rf ~/.config/nvim/
rm -rf ~/.config/rofi/
rm -rf ~/.config/waybar/
rm -rf ~/.config/yazi/
rm -rf ~/.bashrc 
echo -e 'Creating directories for config files\n\n'
mkdir ~/.config/hypr/
mkdir ~/.config/hypr/conf/
mkdir ~/.config/kitty/
mkdir ~/.config/mako/
mkdir ~/.config/nvim/
mkdir ~/.config/nvim/lua/
mkdir ~/.config/nvim/lua/plugins/
mkdir ~/.config/rofi/
mkdir ~/.config/waybar/
mkdir ~/.config/yazi/
echo -e 'Creating symlinks for dotfiles\n\n'
### softlink format: ln -s actual_file softlink_file
# .bashrc dotfile
ln -s ~/projects/archdots/bash/.bashrc ~/.bashrc
# hyprland and hyprtools dotfiles
ln -s ~/projects/archdots/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
ln -s ~/projects/archdots/hypr/conf/monitor.conf ~/.config/hypr/conf/monitor.conf
ln -s ~/projects/archdots/hypr/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
ln -s ~/projects/archdots/hypr/hypridle.conf ~/.config/hypr/hypridle.conf
# kitty dotfiles
ln -s ~/projects/archdots/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/projects/archdots/kitty/current-theme.conf ~/.config/kitty/current-theme.conf
# mako dotfiles
ln -s ~/projects/archdots/mako/config ~/.config/mako/config
# neovim dotfiles
ln -s ~/projects/archdots/nvim/init.lua ~/.config/nvim/init.lua
ln -s ~/projects/archdots/nvim/lazy-lock.lua ~/.config/nvim/lazy-lock.lua
ln -s ~/projects/archdots/nvim/lua/plugins.lua ~/.config/nvim/lua/plugins.lua
ln -s ~/projects/archdots/nvim/lua/plugins/catppuccin.lua ~/.config/nvim/lua/plugins/catppuccin.lua
ln -s ~/projects/archdots/nvim/lua/plugins/lsp-config.lua ~/.config/nvim/lua/plugins/lsp-config.lua
ln -s ~/projects/archdots/nvim/lua/plugins/lualine.lua ~/.config/nvim/lua/plugins/lualine.lua
ln -s ~/projects/archdots/nvim/lua/plugins/nvim-neo-tree.lua ~/.config/nvim/lua/plugins/nvim-neo-tree.lua
ln -s ~/projects/archdots/nvim/lua/plugins/nvim-treesitter.lua ~/.config/nvim/lua/plugins/nvim-treesitter.lua
ln -s ~/projects/archdots/nvim/lua/plugins/telescope.lua ~/.config/nvim/lua/plugins/telescope.lua
ln -s ~/projects/archdots/nvim/lua/plugins/vim-be-good.lua ~/.config/nvim/lua/plugins/vim-be-good.lua
# rofi dotfiles
ln -s ~/projects/archdots/rofi/config.rasi ~/.config/rofi/config.rasi
# waybar dotfiles
ln -s ~/projects/archdots/waybar/config ~/.config/waybar/config
ln -s ~/projects/archdots/waybar/style.css ~/.config/waybar/style.css
# yazi dotfiles
ln -s ~/projects/archdots/yazi/yazi.toml ~/.config/yazi/yazi.toml
