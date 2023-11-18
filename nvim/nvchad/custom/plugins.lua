local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	{
		"hrsh7th/nvim-cmp",
		opts = overrides.nvim_cmp,
	},

	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-telescope/telescope.nvim",
		opts = overrides.telescope,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	{
		"NvChad/nvterm",
		enabled = false,
		-- opts = overrides.nvterm
	},

	-- tmux
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},

	-- rust
	{
		"saecki/crates.nvim",
		ft = { "rust", "toml" },
		config = function(_, opts)
			local crates = require("crates")
			crates.setup(opts)
			crates.show()
		end,
	},

	{
		"simrat39/rust-tools.nvim",
		ft = "rust",
		config = function()
			local rt = require("rust-tools")

			rt.setup({
				server = {
					--   capabilities = require("cmp_nvim_lsp").default_capabilities(),
					on_attach = function(_, bufnr)
						-- Hover actions
						vim.keymap.set(
							"n",
							"<C-space>",
							rt.hover_actions.hover_actions,
							{ desc = "Rust hover actions", buffer = bufnr }
						)
						-- Code action groups
						vim.keymap.set(
							"n",
							"<Leader>a",
							rt.code_action_group.code_action_group,
							{ desc = "Rust code actions", buffer = bufnr }
						)
					end,
				},
			})
		end,
	},

	-- markdown
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		config = function()
			local g = vim.g
			g.mkdp_auto_close = 0
			vim.api.nvim_set_keymap("n", "<leader>mp", ":MarkdownPreview <CR>", { desc = "markdown preview" })
			vim.api.nvim_set_keymap("n", "<leader>ms", ":MarkdownPreviewStop <CR>", { desc = "markdown preview stop" })
			vim.api.nvim_set_keymap(
				"n",
				"<leader>mt",
				":MarkdownPreviewToggle <CR>",
				{ desc = "markdown preview toggle" }
			)
		end,
	},

	-- git
	-- TODO: check if tpope/vim-fugitive is better
	{
		"sindrets/diffview.nvim",
		lazy = false,
		config = function()
			require("diffview").setup({
				show_help_hints = false,
			})
			vim.api.nvim_set_keymap("n", "<leader>gdo", ":DiffviewOpen <CR>", { desc = "diffview open" })
			vim.api.nvim_set_keymap("n", "<leader>gdc", ":DiffviewClose <CR>", { desc = "diffview close" })
			vim.api.nvim_set_keymap("n", "<leader>gdr", ":DiffviewRefresh <CR>", { desc = "diffview refresh" })
			vim.api.nvim_set_keymap("n", "<leader>gdh", ":DiffviewFileHistory <CR>", { desc = "diffview file history" })
		end,
	},

	-- todo comments
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		opts = {
			keywords = {
				TODO = { color = "#BBEAFA" },
			},
		},
	},
}

return plugins
