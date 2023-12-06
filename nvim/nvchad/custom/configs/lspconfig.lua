local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

-- lsp servers
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local servers = {
	-- webdev stuff
	"html",
	"cssls",
	"tailwindcss",
	"tsserver",
	"eslint",
	"emmet_language_server",

	-- high level stuff
	"pyright",

	-- config stuff
	"jsonls",

	-- low level stuff
	"clangd",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig.rust_analyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
