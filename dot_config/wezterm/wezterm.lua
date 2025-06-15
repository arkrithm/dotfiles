-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
config.automatically_reload_config = true

config.window_close_confirmation = "NeverPrompt"

-- This is where you actually apply your config choices
config.font = wezterm.font("Hack Nerd Font", { weight = "Bold" })
config.font_size = 15.0
config.use_ime = true

-- For example, changing the color scheme:
config.color_scheme = "Railscasts (base16)"

config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
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

-- and finally, return the configuration to wezterm
return config
