return {
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
        clangd = {
          init_options = {
            fallbackFlags = {
              -- "-Weverything", -- also includes experimental warnings
              -- "-Werror", -- promotes all warnings to errors
              "-Wall",
              "-Wextra",
            },
          },
        },
      },
    },
  },

  -- markdown
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    config = function()
      vim.g.mkdp_auto_close = 0
    end,
  },

  {
    "lukas-reineke/headlines.nvim",
    opts = {
      markdown = {
        fat_headline_upper_string = "▃",
        fat_headline_lower_string = "▀",
      },
      org = {
        fat_headline_upper_string = "▃",
        fat_headline_lower_string = "▀",
      },
    },
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

  -- c & c++
  {
    "p00f/clangd_extensions.nvim",
    ft = { "c", "cpp" },
  },
}
