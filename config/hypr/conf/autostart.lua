require("conf/binds")

hl.on("hyprland.start", function ()
    -- Autostart necessary processes (like notifications daemons, status bars, etc.)
    -- user auth
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
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
    -- vpn
    -- hl.exec_cmd("protonvpn connect")
    -- Or execute your favorite apps at launch like this:
    hl.exec_cmd("gmail-tray", {workspace = "1"})
    -- hl.exec_cmd(browser, {workspace = "1"})
    hl.exec_cmd("gtk-launch notion", {workspace = "1"})
    hl.exec_cmd("betterbird")
    hl.exec_cmd("whatsit")
    hl.exec_cmd("code", {workspace = "2"})
    -- hl.exec_cmd("obsidian", {workspace = "3"})
end)
