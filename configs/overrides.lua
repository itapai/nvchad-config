local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",

    "bash",
    "c",
    "css",
    "dockerfile",
    "fish",
    "go",
    "html",
    "javascript",
    "jq",
    "json",
    "make",
    "markdown",
    "php",
    "sql",
    "toml",
    "typescript",
    "vue",
    "yaml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- language servers
    -- "ansible-language-server",
    "bash-language-server",
    "css-lsp",
    -- "dockerfile-language-server",
    "gopls",
    "html-lsp",
    "json-lsp",
    "lua-language-server",
    -- "marksman",
    -- "spectral-language-server",
    -- "sqlls",
    "typescript-language-server",
    "yaml-language-server",

    -- linters
    "golangci-lint",

    -- formatters
    "goimports",
    "prettier",
    "sql-formatter",
    "stylua",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
