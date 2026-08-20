-- See https://wiki.hypr.land/Configuring/Monitors/

hl.monitor({
    output = "eDP-1",
    mode = "highres",
    position = "auto",
    scale = 1.2,
})
hl.monitor({
    output = "",
    mode = "1920x1080@144",
    position = "auto",
    scale = 1,
    mirror = "eDP-1",
    sdrbrightness = 1.0,
    sdrsaturation = 1.0,
})

hl.config({

    -- https://wiki.hypr.land/Configuring/Variables#input
    input = {
        kb_layout = "br, us",
        kb_variant = "abnt2",
        kb_options = "ctrl:nocaps",

        -- kb_model =
        -- kb_rules =

        -- 0 - Cursor movement will not change focus.
        -- 1 - Cursor movement will always change focus to the window under the cursor.
        -- 2 - Cursor focus will be detached from keyboard focus. Clicking on a window will move keyboard focus to that window.
        -- 3 - Cursor focus will be completely separate from keyboard focus. Clicking on a window will not change keyboard focus.
        follow_mouse = 2,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = true,
            disable_while_typing = true
        },

    },

    -- See https://wiki.hypr.land/Configuring/Gestures
    -- gesture = 3, horizontal, workspace


})

hl.device = {
    name = "epic-mouse-v1",
    sensitivity = "-0.5"
}