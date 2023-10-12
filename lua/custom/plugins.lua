local plugins = {
  { "ThePrimeagen/vim-be-good" , cmd = "VimBeGood" },

  -- git integration
  { "tpope/vim-fugitive", lazy = false },

  { "nvim-treesitter/nvim-treesitter",
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
        "json"
      }
    }
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- defaults
        "lua-language-server",

        -- go
        "gopls",
      }
    }
  }
}

return plugins
