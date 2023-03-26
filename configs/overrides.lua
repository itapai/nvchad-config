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
    "markdown_inline",
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
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- lsps
    "ansible-language-server",
    "bash-language-server",
    "css-lsp",
    "dockerfile-language-server",
    "gopls",
    "html-lsp",
    "json-lsp",
    "sqlls",
    "tailwindcss-language-server",
    "terraform-ls",
    "typescript-language-server",
    "yaml-language-server",

    -- linters
    "ansible-lint",
    "golangci-lint",
    "jsonlint",
    "shellcheck",
    "tflint",
    "yamllint",

    -- formatters
    "goimports",
    "jq",
    "prettier",
    "shfmt",
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
