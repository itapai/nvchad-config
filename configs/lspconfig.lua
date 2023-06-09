local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"

-- if you just want default config for the servers then add them here
local servers = {
  "ansiblels",
  "html",
  "cssls",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {},
}

lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    json = {
      schemastore = {
        url = "https://www.schemastore.org/api/json/catalog.json",
      },
    },
  },
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "yaml" },

  settings = {
    yaml = {
      schemastore = {
        url = "https://www.schemastore.org/api/json/catalog.json",
      },
    },
  },
}
