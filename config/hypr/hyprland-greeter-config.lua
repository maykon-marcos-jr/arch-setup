-- -- SYSC-Greet Hyprland config for greetd greeter session
-- -- Monitors auto-detected by Hyprland at runtime

hl.monitor({
    output = "eDP-1",
    mode = "highres",
    position = "auto",
    scale = 1.2,
})
hl.monitor({
    output = "",
    mode = "highres",
    position = "auto",
    scale = 1.25,
    mirror = "eDP-1",
    sdrbrightness = 1.0,
    sdrsaturation = 1.0,
})

-- -- No animations for faster greeter startup
hl.config({

    animations = {
        enabled = false,
    },

    -- Minimal decorations
    decoration = {
        rounding = 0,
        blur = {
            enabled = false
        },
    },

    -- Greeter doesn't need gaps
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 0,
    },

    -- CHANGED 2025-10-18 - Disable Hyprland wallpaper/logo for greeter
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        background_color = "rgb(000000)",
        -- Suppress watchdog warning - greetd doesn't pass fd properly to start-hyprland
        disable_watchdog_warning = true,
    },

    -- Suppress annoying update/donation popups
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },

    -- Input configuration
    input = {
        kb_layout = "br, us",
        kb_variant = "abnt2",
        kb_options = "ctrl:nocaps",

        touchpad = {
            natural_scroll = true,
            disable_while_typing = true
        },

    },

})

-- Uncomment to hide cursor completely
-- cursor {
--     invisible = true
-- }

-- Disable all keybindings (security for greeter)
-- No binds = no user control

-- Window rules for kitty greeter
hl.window_rule(
    {
        match = {
            class = "^kitty$"
        },
        fullscreen = true,
        opacity = 1.0
    }
)

-- Layer rules for wallpaper daemon
hl.layer_rule({
    match = {
        namespace = "wallpaper"
    },
    -- blur = {
    --     enabled = true,
    -- },
})

-- Startup applications
hl.on("hyprland.start", function ()
    -- Start gslapper with the cached greeter wallpaper (forked to background with IPC socket)
    hl.exec_cmd("HOME=/var/lib/greeter /usr/local/bin/sysc-greet --wallpaper-daemon")
    -- Start kitty greeter with cached wallpaper
    -- hl.exec_cmd("XDG_CACHE_HOME=/tmp/greeter-cache HOME=/var/lib/greeter kitty --start-as=fullscreen --config=/etc/greetd/kitty.conf /usr/local/bin/sysc-greet && hyprctl dispatch exit")
    -- Start ghostty greeter with cached wallpaper
    hl.exec_cmd("XDG_CACHE_HOME=/tmp/greeter-cache HOME=/var/lib/greeter ghostty --fullscreen=true -e /usr/local/bin/sysc-greet && hyprctl dispatch exit")
end)
