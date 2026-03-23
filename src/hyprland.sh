#!/bin/bash

echo "installing hyprland and related apps"
paru -Sy --needed --noconfirm - < ~/arch-setup/apps/hyprland.list


# creating symlinks for hyprland config
echo "creating symlinks for hyprland config"
ln -sfn ~/arch-setup/config/hypr ~/.config/
ln -sfn ~/arch-setup/config/sunsetr ~/.config/
ln -sfn ~/arch-setup/config/waybar ~/.config/
ln -sfn ~/arch-setup/config/wl-kbptr/ ~/.config/
ln -sfn ~/arch-setup/config/wofi ~/.config/