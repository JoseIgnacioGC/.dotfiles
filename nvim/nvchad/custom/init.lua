local g = vim.g
local opt = vim.opt

-- globals
g.toggle_theme_icon = ""

-- Numbers
opt.relativenumber = true
opt.ignorecase = false

-- Auto resize panes when resizing nvim window
local autocmd = vim.api.nvim_create_autocmd
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
