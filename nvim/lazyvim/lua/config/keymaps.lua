-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Tmux navigate
map("n", "<C-h>", "<cmd> TmuxNavigateLeft <CR>", { desc = "window left", remap = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight <CR>", { desc = "window right", remap = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown <CR>", { desc = "window down", remap = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp <CR>", { desc = "window up", remap = true })
map("v", "<C-h>", "<cmd> TmuxNavigateLeft <CR>", { desc = "window left", remap = true })
map("v", "<C-l>", "<cmd> TmuxNavigateRight <CR>", { desc = "window right", remap = true })
map("v", "<C-j>", "<cmd> TmuxNavigateDown <CR>", { desc = "window down", remap = true })
map("v", "<C-k>", "<cmd> TmuxNavigateUp <CR>", { desc = "window up", remap = true })
