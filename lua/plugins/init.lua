return {
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "plugins.configs.plugins.telescope"
    end,
  },
  -- nvim tree
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require "plugins.configs.plugins.nvim-tree"
    end,
    event = { "BufWinEnter", "BufReadPre" },
  },
  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
      require "plugins.configs.plugins.bufferline"
    end,
  },
  -- lauline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "plugins.configs.plugins.lualine"
    end,
    event = "VeryLazy",
  },
  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  -- noice
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require("plugins.configs.plugins.noice").setup()
  --   end,
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --   },
  -- },
  -- indent-blankline config
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   config = function()
  --     require "plugins.configs.plugins.ident-blankline"
  --   end,
  -- },
  -- auto format
  -- tree sitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      }
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "html",
        "cssls",
        "gopls",
        "glint",
        "pyright",
        "intelephense",
        "lua_ls",
        "rust_analyzer",
      },
    },
  },
  {
    "jwalton512/vim-blade",
  },
}
