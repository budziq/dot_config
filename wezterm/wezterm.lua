-- Pull in the wezterm API
local wezterm = require 'wezterm'

local mux = wezterm.mux

--wezterm.on('gui-startup', function(cmd)
--  local tab, pane, window = mux.spawn_window(cmd or {})
--  window:gui_window():maximize()
--end)

wezterm.on('format-window-title', function ()
	return 'wezterm_drop'
end)
-- This will hold the configuration.
local config = wezterm.config_builder()

config.unix_domains = {
  {
    name = 'dropdown',
  }
}
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.color_scheme = 'Gogh (Gogh)'
config.color_scheme = 'Material (Gogh)'
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.color_scheme = 'Gruvbox dark, medium (base16)'

config.color_scheme = 'Monokai Dark (Gogh)'
config.color_scheme = 'Monokai Pro (Gogh)'
config.color_scheme = 'catppuccin-macchiato'
config.color_scheme = 'Tomorrow Night (Gogh)'
config.color_scheme = 'catppuccin-frappe'
-- config.color_scheme = 'catppuccin-macchiato'
--config.color_scheme = 'catppuccin-mocha'
config.color_scheme = 'Monokai Dark (Gogh)'
config.color_scheme = 'Tomorrow Night Eighties (Gogh)'
config.color_scheme = 'Sonokai (Gogh)'
config.color_scheme = 'Gruvbox dark, medium (base16)'
config.color_scheme = 'Everforest Dark (Gogh)'
config.color_scheme = 'Hybrid (Gogh)'
config.color_scheme = 'Kanagawa (Gogh)'
-- config.color_scheme = 'melange_dark'
config.color_scheme = 'Nord (Gogh)'
config.color_scheme = 'Catppuccin Frappe'
config.color_scheme = 'catppuccin-frappe'
config.color_scheme = 'nordic'
config.color_scheme = 'Catppuccin Frappé (Gogh)'

config.font = wezterm.font 'JetBrainsMonoNL Nerd Font'

config.window_decorations = "NONE"
config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.default_prog = { '/usr/local/bin/tmux', 'new-session', '-A', '-s', 'main'}
return config
