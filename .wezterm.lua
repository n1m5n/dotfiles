-- Require wezterm at the top
local wezterm = require("wezterm")

-- Create config
local config = wezterm.config_builder()

-- General settings
config.front_end = "OpenGL"
config.max_fps = 180
config.default_cursor_style = "SteadyBlock"
config.term = "xterm-256color"

-- Font settings
config.font = wezterm.font("Iosevka Nerd Font Mono")
config.cell_width = 0.9
config.font_size = 22
config.window_background_opacity = 0.9
config.prefer_egl = true

-- Window padding
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- Tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- Keymaps
config.keys = {
    {
        key = "O",
        mods = "CTRL|ALT",
        action = wezterm.action_callback(function(window, _)
            local overrides = window:get_config_overrides() or {}
            if overrides.window_background_opacity == 1.0 then
                overrides.window_background_opacity = 0.9
            else
                overrides.window_background_opacity = 1.0
            end
            window:set_config_overrides(overrides)
        end),
    },
    {
        key = "F11",
        mods = "",
        action = wezterm.action.ToggleFullScreen,
    },
}

config.colors = {
    foreground = "#cdcdcd",
    background = "#141415",

    cursor_bg = "#cdcdcd",
    cursor_fg = "#141415",
    cursor_border = "#cdcdcd",

    selection_fg = "#cdcdcd",
    selection_bg = "#252530",

    scrollbar_thumb = "#252530",
    split = "#252530",

    ansi = {
        "#252530",
        "#d8647e",
        "#7fa563",
        "#f3be7c",
        "#6e94b2",
        "#bb9dbd",
        "#aeaed1",
        "#cdcdcd",
    },
    brights = {
        "#606079",
        "#e08398",
        "#99b782",
        "#f5cb96",
        "#8ba9c1",
        "#c9b1ca",
        "#bebeda",
        "#d7d7d7",
    },
}


-- Window frame
config.window_frame = {
    font = wezterm.font({ family = "Iosevka Nerd Font Mono", weight = "Regular" }),
    active_titlebar_bg = "#0c0b0f",
}

config.window_decorations = "NONE | RESIZE"
config.default_prog = { "C:\\Users\\Naman\\AppData\\Local\\Microsoft\\WindowsApps\\Microsoft.PowerShell_8wekyb3d8bbwe\\pwsh.exe", "-NoLogo" }
config.initial_cols = 80

return config
