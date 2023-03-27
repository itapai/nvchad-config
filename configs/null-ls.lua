local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
-- local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.fish_indent,
  formatting.jq,
  formatting.prettier.with {
    filetypes = { "html", "markdown", "css" },
  },
  formatting.shfmt,
  formatting.stylua,
  -- formatting.yamlfmt,

  -- Go
  formatting.gofmt,
  formatting.goimports,

  diagnostics.ansiblelint,
  diagnostics.fish,
  diagnostics.jsonlint,
  diagnostics.shellcheck,
  -- diagnostics.spectral,
  -- diagnostics.yamllint,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = false,
  sources = sources,

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
