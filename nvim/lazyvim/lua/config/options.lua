-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local g = vim.g
local opt = vim.opt

-- globals
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.python3_host_prog = "/usr/bin/python3"
g.node_host_prog = "/home/ignacio/.volta/tools/image/packages/neovim/bin/neovim-node-host"

-- options
opt.wrap = true
