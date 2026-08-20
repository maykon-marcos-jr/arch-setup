-------------------------
------ MY PROGRAMS ------
-------------------------

-- Set programs that you use
terminal = "ghostty"
-- The file managers is yazi, run on the terminal
fileManager = terminal .. " -e yazi"
menu = "wofi"
browser = "firefox  --ProfileManager"

-- unmapping F11
-- bind = , F11, exec, true
hl.bind("F11", hl.dsp.no_op())
-- disable the Insert key to prevent accidental presses, as it is not used for anything else
-- bind( = , INSERT, exec, true
hl.bind("INSERT", hl.dsp.no_op())

-------------------------
------ KEYBINDINGS ------
-------------------------

-- See https://wiki.hypr.land/Configuring/Keywords/
local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Binds/ for more

hl.bind("ALT + F4", hl.dsp.exec_cmd("bash ~/.config/hypr/conf/scripts/quit.sh"))
-- Lock screen
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd("hyprctl switchxkblayout current next"))
-- Launchers
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("pkill " .. menu .. " || " .. menu .. " &"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("gtk-launch calendar-notion"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("discord"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("gmail-tray"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("gtk-launch notion"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("obsidian"))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("code"))
hl.bind("ALT + W", hl.dsp.exec_cmd("whatsit"))
-- Toggle fullscreen
hl.bind(mainMod .. " + F11", hl.dsp.window.fullscreen({
    mode = "fullscreen",
    action = "toggle"
}))

-- adding alt+tab functionality
hl.bind("ALT + Tab", hl.dsp.window.cycle_next())
-- Toggle split/stacking layout with mainMod + X
-- hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("layoutmsg, togglesplit"))
-- Maximize with mainMod + M
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({
    mode = "maximized",
    action = "toggle"
}))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + Left", hl.dsp.focus({direction = "l"}))
hl.bind(mainMod .. " + Right", hl.dsp.focus({direction = "r"}))
hl.bind(mainMod .. " + Up", hl.dsp.focus({direction = "u"}))
hl.bind(mainMod .. " + Down", hl.dsp.focus({direction = "d"}))

-- move windows with mainMod + SHIFT + arrow keys
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "d" }))

-- Switch workspaces with mainMod + S/W
hl.bind(mainMod .. " + W", hl.dsp.focus({workspace = "r-1"}))
hl.bind(mainMod .. " + S", hl.dsp.focus({workspace = "r+1"}))

-- Move focused window to different workspace with mainMod + SHIFT + S/W
hl.bind(mainMod .. " + SHIFT + Page_up", hl.dsp.window.move({ workspace = "r-1" }))
hl.bind(mainMod .. " + SHIFT + Page_down", hl.dsp.window.move({ workspace = "r+1" }))

-- Set repeatable hl.bind(s for resizing the active window.
hl.bind(mainMod .. " + SHIFT + ALT + right", hl.dsp.window.resize({ x = "+5", y = "0", relative = true }))
hl.bind(mainMod .. " + SHIFT + ALT + left", hl.dsp.window.resize({ x = "-5", y = "0", relative = true }))
hl.bind(mainMod .. " + SHIFT + ALT + up", hl.dsp.window.resize({ x = "0", y = "-5", relative = true }))
hl.bind(mainMod .. " + SHIFT + ALT + down", hl.dsp.window.resize({ x = "0", y = "+5", relative = true }))

hl.bind(mainMod .. "+ F1", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {locked = true, repeating = true})
hl.bind(mainMod .. "+ F2", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), {locked = true, repeating = true})
hl.bind(mainMod .. "+ F3", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), {locked = true, repeating = true})
hl.bind(mainMod .. "+ F4", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), {locked = true, repeating = true})
hl.bind("F4", hl.dsp.exec_cmd("playerctl play-pause"), {locked = true})
hl.bind(mainMod .. "+ F5", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), {locked = true, repeating = true})
hl.bind(mainMod .. "+ F6", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), {locked = true, repeating = true})

-- printscreen to take a screenshot of the entire screen
hl.bind(mainMod .. "+ Print", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures"))


-- Multimedia keys for volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), {locked = true, repeating = true})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), {locked = true, repeating = true})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {locked = true, repeating = true})
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), {locked = true, repeating = true})
-- Multimedia keys for brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), {locked = true, repeating = true})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), {locked = true, repeating = true})
-- Multimedia keys for media playback
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), {locked = true})
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), {locked = true})
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), {locked = true})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), {locked = true})

-- Cursor movement
hl.bind(mainMod .. "+ ALT + down", hl.dsp.exec_cmd("wlrctl pointer move 0 10"))
hl.bind(mainMod .. "+ ALT + up", hl.dsp.exec_cmd("wlrctl pointer move 0 -10"))
hl.bind(mainMod .. "+ ALT + right", hl.dsp.exec_cmd("wlrctl pointer move 10 0"))
hl.bind(mainMod .. "+ ALT + left", hl.dsp.exec_cmd("wlrctl pointer move -10 0"))
-- faster movement
hl.bind(mainMod .. "+ CTRL + down", hl.dsp.exec_cmd("wlrctl pointer move 0 75"))
hl.bind(mainMod .. "+ CTRL + up", hl.dsp.exec_cmd("wlrctl pointer move  0 -75"))
hl.bind(mainMod .. "+ CTRL + right", hl.dsp.exec_cmd("wlrctl pointer move  75 0"))
hl.bind(mainMod .. "+ CTRL + left", hl.dsp.exec_cmd("wlrctl pointer move  -75 0"))

-- -- Scroll up and down
hl.bind(mainMod .. "+ ALT + w", hl.dsp.exec_cmd("wlrctl pointer scroll -10 0"))
hl.bind(mainMod .. "+ ALT + s", hl.dsp.exec_cmd("wlrctl pointer scroll 10 0"))

-- -- Scroll left and right
hl.bind(mainMod .. "+ ALT + a", hl.dsp.exec_cmd("wlrctl pointer scroll 0 10"))
hl.bind(mainMod .. "+ ALT + d", hl.dsp.exec_cmd("wlrctl pointer scroll 0 -10"))

-- Left button
hl.bind(mainMod .. "+ Return", hl.dsp.exec_cmd("wlrctl pointer click left"))
-- Right button
hl.bind(mainMod .. "+ KP_Enter", hl.dsp.exec_cmd("wlrctl pointer click right"))