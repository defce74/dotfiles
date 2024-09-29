-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Catch Me If You Can (terminal.sexy)'
-- config.color_scheme = 'Catppuccin Mocha'

config.window_background_opacity = 0.8

config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font 'UbuntuMono Nerd Font'
config.font_size = 13 -- 13.3

config.initial_rows = 55
config.initial_cols = 195

config.keys = {
	{ key = 'LeftArrow', mods = 'CTRL|SHIFT',
		action = wezterm.action.ActivateTabRelative(-1) },
	{ key = 'RightArrow', mods = 'CTRL|SHIFT',
		action = wezterm.action.ActivateTabRelative(1) },
}

return config
