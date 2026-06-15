#!/bin/bash

echo "=========================================="
echo " Đang thiết lập Dotfiles cho máy mới... "
echo "=========================================="

# Tạo thư mục .config nếu máy mới chưa có
mkdir -p ~/.config

# Tạo liên kết cấu hình phần mềm (Symlinks)
ln -sfn ~/dotfiles/config/hypr ~/.config/hypr
ln -sfn ~/dotfiles/config/kitty ~/.config/kitty
ln -sfn ~/dotfiles/config/fastfetch ~/.config/fastfetch

# Link thêm Waybar/Rofi nếu có trong repo
[ -d ~/dotfiles/config/waybar ] && ln -sfn ~/dotfiles/config/waybar ~/.config/waybar
[ -d ~/dotfiles/config/rofi ] && ln -sfn ~/dotfiles/config/rofi ~/.config/rofi

# Tạo liên kết cho các file cấu hình Shell ở thư mục Home
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/zprofile ~/.zprofile
ln -sf ~/dotfiles/gitconfig ~/.gitconfig

echo "------------------------------------------"
echo " ĐÃ CÀI ĐẶT XONG!"
echo " LƯU Ý: Nếu đây là Laptop Ryzen, nhớ vào"
echo " ~/.config/hypr/hyprland.conf để tắt các"
echo " biến môi trường liên quan đến NVIDIA nhé."
echo "=========================================="
