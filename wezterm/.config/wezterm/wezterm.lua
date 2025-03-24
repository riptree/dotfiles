local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.automatically_reload_config = true
config.font_size = 14.0
config.font = wezterm.font("PlemolJP35 Console NF")
config.color_scheme = 'Dracula'
config.use_ime = true
config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"
config.macos_window_background_blur = 20
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local background = "#5c6d74"
    local foreground = "#FFFFFF"

    if tab.is_active then
        background = "#ae8b2d"
        foreground = "#FFFFFF"
    end

    local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "

    return {
        { Background = { Color = background } },
        { Foreground = { Color = foreground } },
        { Text = title },
    }
end)

config.keys = require("keybinds").keys
config.key_tables = require("keybinds").key_tables

config.leader = { key = "g", mods = "CTRL", timeout_milliseconds = 2000 }

return config
