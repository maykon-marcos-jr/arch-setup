require("conf/binds")

hl.on("hyprland.start", function ()
    -- Autostart necessary processes (like notifications daemons, status bars, etc.)
    -- user auth
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    -- network
    hl.exec_cmd("nm-applet")
    -- notifications
    hl.exec_cmd("swaync")
    -- clipboard manager
    hl.exec_cmd("wl-clip-persist --clipboard regular")
    -- wallpaper
    hl.exec_cmd("systemctl --user start hyprpaper.service")
    -- Sunlight management
    hl.exec_cmd("sunsetr")
    -- Idle management
    hl.exec_cmd("systemctl --user start hypridle.service")
    -- backlighit control
    hl.exec_cmd("systemctl --user start light_ctrl.service")
    -- folder sync control
    hl.exec_cmd("systemctl --user start rclone-sync.timer")
    hl.exec_cmd("systemctl --user start rclone-sync.service")
    -- panels and bars
    hl.exec_cmd("waybar")
    hl.exec_cmd("~/.config/waybar/scripts/waybar_peek.py &")
end)