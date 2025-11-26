local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Window
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.initial_cols = 80

-- Term
config.front_end = "OpenGL"
config.max_fps = 144
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_rate = 400
config.term = "xterm-256color"

-- Colors (TokyoNight Night)
config.colors = {
    foreground = "#c0caf5",
    background = "#1a1b26",
    cursor_bg = "#c0caf5",
    cursor_border = "#c0caf5",
    cursor_fg = "#1a1b26",
    selection_bg = "#283457",
    selection_fg = "#c0caf5",
    split = "#7aa2f7",
    compose_cursor = "#ff9e64",
    scrollbar_thumb = "#292e42",
    ansi = { "#15161e", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6" },
    brights = { "#414868", "#ff899d", "#9fe044", "#faba4a", "#8db0ff", "#c7a9ff", "#a4daff", "#c0caf5" },

    tab_bar = {
        background = "#1a1b26",
        inactive_tab_edge = "#16161e",

        active_tab = {
            fg_color = "#16161e",
            bg_color = "#7aa2f7",
        },

        inactive_tab = {
            fg_color = "#545c7e",
            bg_color = "#292e42",
        },

        inactive_tab_hover = {
            fg_color = "#7aa2f7",
            bg_color = "#292e42",
        },

        new_tab = {
            fg_color = "#7aa2f7",
            bg_color = "#1a1b26",
        },

        new_tab_hover = {
            fg_color = "#7aa2f7",
            bg_color = "#1a1b26",
            intensity = "Bold",
        },
    },
}

-- Font
config.font = wezterm.font({
    family = "Iosevka Nerd Font Mono",
    weight = "Regular",
    italic = false,
})
config.font_size = 24.0

-- Tab bar and window decorations
config.enable_tab_bar = false
config.window_decorations = "NONE | RESIZE"

-- Fullscreen toggle with F11
config.keys = {
    {
        key = "F11",
        mods = "NONE",
        action = wezterm.action.ToggleFullScreen,
    },
}

-- Default shell is PowerShell
config.default_prog = { "pwsh.exe", "-NoLogo" }

return config

