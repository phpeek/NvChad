local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "gopls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp] = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
