---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["g<C-t>"] = { "<cmd> tab close <CR>", "Close current tab page" },
		["g<M-t>"] = { "<cmd> tab new <CR>", "Create new tab page" },
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
}

-- custom mappings
local tmux_navigate_mappings = {
	["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
	["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right" },
	["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
	["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up" },
}

M.tmux_navigate = {
	n = tmux_navigate_mappings,
	v = tmux_navigate_mappings,
}

return M
