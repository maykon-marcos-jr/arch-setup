---------------------------
------ LOOK AND FEEL ------
---------------------------

--for libadwaita gtk4 apps you can use this command:
-- for GTK4 apps
hl.dsp.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
-- for GTK3 apps
hl.dsp.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-mocha-red-standard+default'")

-- Refer to https://wiki.hypr.land/Configuring/Variables/

hl.config({
    general = {
        -- https://wiki.hypr.land/Configuring/Variables#general
        border_size = 2,
        gaps_in = 1,
        gaps_out = 0,
        col = {
            -- https://wiki.hypr.land/Configuring/Variables#variable-types for info about colors
            active_border = "rgba(33ccffee)",
            inactive_border = "rgba(595959aa)"
        }
    },

    -- https://wiki.hypr.land/Configuring/Variables#decoration
    decoration = {
        rounding = 10,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 0.7,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },

        -- https://wiki.hypr.land/Configuring/Variables#blur
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },

    -- https://wiki.hypr.land/Configuring/Variables#animations
    animations = {
        enabled = true,
    },

    -- https://wiki.hypr.land/Configuring/Variables#misc
    misc = {
        force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
        font_family = "UbuntuMono Nerd Font Mono", -- Set your default font family here
        mouse_move_enables_dpms = true, -- Whether moving the mouse should wake the screen from DPMS suspend
        key_press_enables_dpms = true,  -- Whether pressing a key should wake the screen from DPMS suspend
        on_focus_under_fullscreen = 1, -- 0 - ignore focus request (keep focus on fullscreen window), 1 - takes over, 2 - unfullscreen/unmaximize
        initial_workspace_tracking = 1 -- if enabled, windows will open on the workspace they were invoked on. 0 - disabled, 1 - single-shot, 2 - persistent (all children too)
    }

})