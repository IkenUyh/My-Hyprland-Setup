#!/bin/bash

echo "=========================================="
echo " Đang thiết lập Dotfiles toàn diện... "
echo "=========================================="

mkdir -p ~/.config

# Link các công cụ cốt lõi và giao diện
ln -sfn ~/dotfiles/config/hypr ~/.config/hypr
ln -sfn ~/dotfiles/config/kitty ~/.config/kitty
ln -sfn ~/dotfiles/config/fastfetch ~/.config/fastfetch

# Link Neovim (Miku Dashboard) và Cava nếu có
[ -d ~/dotfiles/config/nvim ] && ln -sfn ~/dotfiles/config/nvim ~/.config/nvim
[ -d ~/dotfiles/config/cava ] && ln -sfn ~/dotfiles/config/cava ~/.config/cava
[ -f ~/dotfiles/config/hyprlock.conf ] && ln -sf ~/dotfiles/config/hyprlock.conf ~/.config/hyprlock.conf

# Link Shell và Git
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/zprofile ~/.zprofile
ln -sf ~/dotfiles/gitconfig ~/.gitconfig

echo "------------------------------------------"
echo " ĐÃ CÀI ĐẶT XONG TOÀN BỘ CẤU HÌNH!"
echo "=========================================="
