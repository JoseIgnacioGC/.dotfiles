return {

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      hide_root_node = true,
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
      window = {
        position = "right",
        width = 30,
      },
    },
  },

  -- git
  {
    "sindrets/diffview.nvim",
    lazy = false,
    config = function()
      require("diffview").setup({
        show_help_hints = false,
      })
    end,
  },

  -- tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}
