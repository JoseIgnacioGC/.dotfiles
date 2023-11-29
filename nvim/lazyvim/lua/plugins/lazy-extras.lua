return {
  -- markdown
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.g.mkdp_auto_close = 0
    end,
  },

  -- rust
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "crates" },
      }))
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              lens = {
                run = {
                  enable = false,
                },
                debug = {
                  enable = false,
                },
              },
            },
          },
        },
      },
    },
  },

  -- c & c++
  {
    "p00f/clangd_extensions.nvim",
    ft = { "c", "cpp" },
  },
}
