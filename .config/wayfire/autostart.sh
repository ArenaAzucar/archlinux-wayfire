#!/bin/bash

# 默认不挂代理
warp-cli disconnect &

# 启动waybar
waybar &

# mpd
mpd ~/.mpd/mpd.conf &

# 壁纸
swaybg -i $(find "~/Pictures/壁纸" -type f | shuf -n 1) -m fill  &

# 输入法
fcitx5 --replace -d &

# dunst
dunst &

# audio,xdg desktop obs录屏用
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway &
systemctl --user stop pipewire pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk &
systemctl --user start pipewire pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk &



