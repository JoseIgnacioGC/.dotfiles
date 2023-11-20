return {

  -- whichkey group description
  {
    "folke/which-key.nvim",
    opts = {
      delay = 0,
      defaults = {
        ["<leader>gd"] = { name = "+diffview" },
      },
    },
  },

  -- disable indent guide animation
  -- PERF: slow response
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = {
        animation = function()
          return 0
        end,
      },
    },
  },

  -- colorscheme
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      style = "storm",
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {},
      },
    },
  },

  -- file explorer
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

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  -- ensure installed
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- webdev stuff
        "html",
        "css",
        "scss",
        "javascript",
        "jsdoc",
        "typescript",
        "tsx",
        "vue",

        -- high level stuff
        "lua",
        "haskell",
        "php",
        "python",
        "regex",

        -- config stuff
        "vim",
        "bash",
        "json",
        "jsonc",
        "toml",
        "xml",
        "yaml",

        -- git stuff
        "diff",
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",

        -- low level stuff
        "c",
        "cpp",
        "rust",

        -- other
        "sql",
        "latex",
        "markdown",
        "markdown_inline",
        "mermaid",
        "csv",
      },
    },
  },
}
