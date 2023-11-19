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
        "<cmd>diffviewfilehistory<cr>",
        desc = "Diffviewfilehistory",
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
  -- TODO: repalce by https://github.com/alexghergh/nvim-tmux-navigation
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
