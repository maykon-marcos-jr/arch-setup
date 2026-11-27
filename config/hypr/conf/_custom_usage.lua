-- File to include custom uses of hyprland config, without changing the default config.
-- This file is loaded after the default config, so you can override any settings here.
-- To ensure it`s changes are not tracked by git, run
-- git update-index --skip-worktree config/hypr/conf/_custom_usage.lua

require("conf/binds")

hl.on("hyprland.start", function ()
end)