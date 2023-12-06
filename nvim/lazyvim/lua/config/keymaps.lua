-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>uS", "<cmd>lua ToggleColorScheme()<cr>", { desc = "toggle color scheme" })
map("n", "<leader>gD", "<cmd>Gitsigns toggle_deleted<cr>", { desc = "toggle deleted lines" })
