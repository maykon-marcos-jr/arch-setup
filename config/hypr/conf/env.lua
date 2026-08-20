-- See https://wiki.hypr.land/Configuring/Environment-variables/

---- XDG Specifications
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
-- cursor size
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
--themes
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("GTK_THEME", "catppuccin-mocha-green-standard+default")

------ Toolkit Backend Variables

-- - GTK: Use Wayland if available; if not, try X11 and then any other GDK backend.
hl.env("GDK_BACKEND", "wayland,x11,*")
-- - Qt: Use Wayland if available, fall back to X11 if not.
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
-- - Qt: Enable automatic scaling of Qt applications based on the monitor's DPI.
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
-- - Run SDL2 applications on Wayland. Remove or set to x11 if games that provide older versions of SDL cause compatibility issues
hl.env("SDL_VIDEODRIVER", "wayland")
-- - Clutter package already has Wayland enabled, this variable will force Clutter applications to try and use the Wayland backend
hl.env("CLUTTER_BACKEND", "wayland")

-- Enable native Wayland support for most Electron app:
hl.env("ELECTRON_OZONE_PLATFORM_HINT","wayland")
-- This has been confirmed to work on Vesktop, VSCodium, Obsidian and will probably work on other Electron apps as well.
-- Other Electron or CEF apps have to be launched with these flags:
-- --enable-features=UseOzonePlatform --ozone-platform=wayland
-- As of Electron 35/Chromium 134, the “syncobj” protocol, which implements explicit sync correctly, is now supported. This resolves all flickering in Electron apps. However, it needs to be manually enabled by adding the below flag to any Electron/CEF app:
-- --enable-features=WaylandLinuxDrmSyncobj
-- Using this in conjunction with native Wayland on these apps should solve all issues.