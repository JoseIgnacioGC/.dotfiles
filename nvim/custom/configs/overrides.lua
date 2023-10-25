local M = {}

M.treesitter = {
	ensure_installed = {
		-- webdev stuff
		"html",
		"css",
		"scss",
		"javascript",
		"jsdoc",
		"typescript",
		"tsx",
		"vue",

		-- high level stuff
		"lua",
		"haskell",
		"php",
		"python",
		"regex",

		-- config stuff
		"vim",
		"bash",
		"json",
		"jsonc",
		"toml",
		"xml",
		"yaml",

		-- git stuff
		"diff",
		"git_config",
		"git_rebase",
		"gitcommit",
		"gitignore",

		-- low level stuff
		"c",
		"cpp",
		"rust",

		-- other
		"sql",
		"latex",
		"markdown",
		"markdown_inline",
		"mermaid",
		"csv",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- webdev stuff
		"css-lsp",
		"emmet-ls",
		"eslint-lsp",
		"html-lsp",
    "tailwindcss-language-server",
		"typescript-language-server",
		"prettier",

		-- config stuff
		"beautysh",
		"json-lsp",

		-- high level stuff
		"lua-language-server",
		"stylua",

		-- low level stuff
		"clangd",
		"clang-format",
		"rust-analyzer",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
		ignore = false,
	},

	view = {
		side = "right",
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

M.telescope = {
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	defaults = {
		vimgrep_arguments = {
			"rg",
			"-L",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
			"--hidden",
		},
	},
	-- file_ignore_patterns = { ".git" },
}

M.nvterm = {
	behavior = {
		auto_insert = false,
	},
}

M.nvim_cmp = function()
	local N = require("plugins.configs.cmp")
	table.insert(N.sources, { name = "crates" })
	return N
end

return M
