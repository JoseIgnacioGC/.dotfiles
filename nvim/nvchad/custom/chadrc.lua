---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

-- TODO: wsl possible solution: auto theme change
-- (Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme).AppsUseLightTheme
M.ui = {
	theme = "tokyonight",
	-- theme_toggle = { "tokyonight", "tokyonight" },
	transparency = true,

	hl_override = highlights.override,
	hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M