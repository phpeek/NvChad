local conform = require "conform"

conform.setup {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    go = { "gofmt" },
  },

  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },

  vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    conform.format {
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
    }
  end),
}
