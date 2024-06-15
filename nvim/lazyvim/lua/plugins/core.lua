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

  -- indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = { "Function", "Label" },
      },
    },
    config = function()
      require("ibl").setup()
    end,
  },

  {
    "echasnovski/mini.indentscope",
    enabled = false,
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

  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
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

  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = vim.split(string.rep("\n", 8) .. [[
⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⢶⠉⣭⡍⢽⡿⠷⢶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢀⣤⢴⣚⢛⡨⢆⢻⡻⣛⢫⢵⣖⡗⠯⡸⣟⡻⣳⣦⣤⡀⠀⠀⠀
⠀⠀⠠⡿⡧⣾⡩⢹⠓⡞⣉⡪⡟⢻⡖⢧⣍⡛⣳⠼⣧⣉⣷⢻⢯⠀⠀⠀
⠀⠀⣜⣣⠷⣯⡵⠫⡂⣈⠿⣤⠘⣻⡟⢉⡼⢛⣁⣶⡛⢯⣽⢾⣬⣣⠀⠀
⠀⢰⠯⠰⠄⣶⠈⢓⠣⠄⢑⠤⠂⡋⢙⠰⠄⡋⢠⢝⣋⠁⡶⡾⡇⠿⡄⠀
⠀⣿⣀⠢⡕⡨⠚⣈⢀⠆⢐⠐⡡⠁⠌⢥⠒⠁⢬⣈⣉⠗⢅⢾⣿⡴⣻⠀
⢼⣇⠃⢌⡁⢇⠈⡀⠒⠀⠊⠠⢀⠰⠄⡀⠀⠓⠠⠆⢌⠙⡘⠘⣶⠺⣮⡇
⣧⣴⣿⡶⡢⠠⣦⠜⡘⠐⠰⠐⠄⠐⠓⠀⠡⢀⡀⢮⢶⣶⣠⠾⣿⣿⣷⡿
⣿⣯⣟⢵⣶⣶⣶⠶⠶⢷⣶⣶⡄⢀⠔⢁⣶⣷⡾⠶⠶⣶⣿⣷⡏⣿⣻⣿
⢻⣿⣿⠸⣿⣿⢆⣄⣴⣤⣿⢯⠓⡈⠀⢲⣿⣽⣤⣆⢘⣨⣿⣻⢃⣽⣿⡇
⠈⣿⣗⡄⢀⣥⠀⠄⠈⠄⢄⣄⠘⠀⡉⢲⣀⡄⢈⣬⠤⠉⠙⢠⣿⢿⣵⠁
⠀⠙⣿⣿⡀⠁⡄⠀⠀⠊⢸⡇⠐⠠⠀⠄⢸⣵⠊⠁⠀⠀⠀⣸⣿⣿⠃⠀
⠀⠀⢿⣿⣂⠀⠀⠀⠄⠀⠈⠳⡶⢶⠷⡷⠞⠃⠀⠀⢡⠛⢀⣿⣿⡟⠀⠀
⠀⠀⢸⣿⣿⠄⠀⠐⠀⡐⢀⣄⣐⣀⣃⣂⣂⢂⠈⡀⠀⠀⣤⣽⣿⠃⠀⠀
⠀⠀⠀⠉⠻⢀⠀⠈⠄⠨⠤⣤⡝⠉⠉⠈⠄⢁⠈⢀⠀⠛⢸⠟⠉⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠁⠁⠁⠠⠾⠿⢄⠠⠐⡀⡐⠠⠄⠀⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]] .. "\n\n", "\n"),
      },
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
