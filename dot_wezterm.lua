-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "ChallengerDeep"
config.window_background_opacity = 1
config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}
-- config.font_size = 19
config.font = wezterm.font("JetBrains Mono Nerd Font")

config.keys = {
	{
		key = "F11",
		action = wezterm.action.ToggleFullScreen,
	},

	-- Disable Ctrl+Shift+L by not assigning any action to it
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = "Nop",
	},
}

config.enable_tab_bar = false
config.underline_position = -3
config.underline_thickness = "2px"
config.cursor_thickness = 1
config.window_decorations = "TITLE | RESIZE"

-- and finally, return the configuration to wezterm
return config
