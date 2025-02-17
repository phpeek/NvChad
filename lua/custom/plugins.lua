local plugins = {
  { "ThePrimeagen/vim-be-good", cmd = "VimBeGood" },

  -- git integration
  { "tpope/vim-fugitive", lazy = false },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "lua",
        "vim",

        "vimdoc",

        -- go
        "go",
        "gomod",
        "gosum",
        "gowork",

        -- docker
        "dockerfile",

        -- makefiles
        "make",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "graphql",
        "yaml",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- defaults
        "lua-language-server",

        -- go
        "gopls",

        -- yaml
        "yaml-language-server",

        -- formatters
        "stylua",
      },
    },
  },

  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins
