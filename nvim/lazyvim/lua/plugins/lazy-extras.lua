return {

  -- TODO: hex_color
  -- {
  --   "echasnovski/mini.hipatterns",
  --   opts = function()
  --     local hi = require("mini.hipatterns")
  --     local _none = "#fffff"
  --     return {
  --       highlighters = {
  --         hex_color = hi.gen_highlighter.hex_color({ priority = 2000 }),
  --       },
  --     }
  --   end,
  -- },

  -- markdown
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      local g = vim.g
      g.mkdp_auto_close = 0
    end,
  },

  -- rust
  {
    "Saecki/crates.nvim",
    lazy = true,
    ft = { "rust", "toml" },
  },

  {
    "simrat39/rust-tools.nvim",
    lazy = true,
    ft = { "rust", "toml" },
  },

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
