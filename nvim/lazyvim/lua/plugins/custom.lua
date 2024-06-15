return {

  -- git
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewRefresh" },
    keys = {
      { "<leader>/", false },
      {
        "<leader>gdo",
        "<cmd>DiffviewOpen<cr>",
        desc = "DiffviewOpen",
      },
      {
        "<leader>gdc",
        "<cmd>DiffviewClose<cr>",
        desc = "DiffviewClose",
      },
      {
        "<leader>gdh",
        "<cmd>DiffviewFileHistory<cr>",
        desc = "DiffviewFileHistory",
      },
      {
        "<leader>gdr",
        "<cmd>DiffviewRefresh<cr>",
        desc = "DiffviewRefresh",
      },
    },
    opts = {
      show_help_hints = false,
    },
  },

  -- tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = function()
      return {
        { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Go to left window", mode = { "n", "v" } } },
        { "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Go to right window", mode = { "n", "v" } } },
        { "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Go to lower window", mode = { "n", "v" } } },
        { "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Go to upper window", mode = { "n", "v" } } },
      }
    end,
  },
}
