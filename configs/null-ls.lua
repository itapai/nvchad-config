local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local formatting = null_ls.builtins.formatting
-- local lint = null_ls.builtins.diagnostics

local sources = {

  formatting.prettier.with {
    filetypes = { "html", "markdown", "css" },
  },
  formatting.stylua,
  formatting.clang_format,

  -- Go
  formatting.gofmt,
  formatting.goimports,
}

null_ls.setup {
  debug = true,
  sources = sources,

  on_attach = function()
    vim.api.nvim_create_autocmd("BufWritePost", {
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
