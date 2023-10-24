local g = vim.g
local opt = vim.opt

-- globals
g.toggle_theme_icon = ""

-- Numbers
opt.relativenumber = true
opt.ignorecase = false

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
