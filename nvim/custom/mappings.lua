---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
}

-- custom mappings
M.diff_view = {
	n = {
		["<leader>gdl"] = {
			"<cmd> Lazy load diffview.nvim <CR>",
			"diffview load plugin",
		},
	},
}

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
