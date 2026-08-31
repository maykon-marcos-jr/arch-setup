#!/bin/bash

echo "installing hyprland and related apps"
paru -Sy --needed --noconfirm - < ~/arch-setup/apps/hyprland.list


# creating symlinks for hyprland config
echo "creating symlinks for hyprland config"
sudo cp ~/arch-setup/config/hypr/hyprland-greeter-config.lua /etc/greetd/hyprland-greeter-config.lua
ln -sfn ~/arch-setup/config/hypr ~/.config/
ln -sfn ~/arch-setup/config/sunsetr ~/.config/
ln -sfn ~/arch-setup/config/waybar ~/.config/
ln -sfn ~/arch-setup/config/wofi ~/.config/