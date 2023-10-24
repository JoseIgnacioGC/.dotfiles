local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.nvim_cmp,
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  -- TODO
  -- {
  --   "nvim-treesitter/nvim-treesitter-context",
  --   lazy = false
  -- },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "NvChad/nvterm",
    enabled = false,
    -- opts = overrides.nvterm
  },

  -- tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- rust
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },

  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    config = function()
      local rt = require "rust-tools"

      rt.setup {
        server = {
          --   capabilities = require("cmp_nvim_lsp").default_capabilities(),
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set(
              "n",
              "<C-space>",
              rt.hover_actions.hover_actions,
              { desc = "Rust hover actions", buffer = bufnr }
            )
            -- Code action groups
            vim.keymap.set(
              "n",
              "<Leader>a",
              rt.code_action_group.code_action_group,
              { desc = "Rust code actions", buffer = bufnr }
            )
          end,
        },
      }
    end,
  },

  -- markdown
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    -- build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    config = function()
      vim.api.nvim_set_keymap("n", "<leader>mp", ":MarkdownPreview <CR>", { desc = "markdown preview" })
      vim.api.nvim_set_keymap("n", "<leader>ms", ":MarkdownPreviewStop <CR>", { desc = "markdown preview stop" })
      vim.api.nvim_set_keymap("n", "<leader>mt", ":MarkdownPreviewToggle <CR>", { desc = "markdown preview toggle" })
    end,
  },

  -- git
  -- TODO: make it lazy with mappings
  {
    "sindrets/diffview.nvim",
    lazy = false,
  },
}

return plugins
