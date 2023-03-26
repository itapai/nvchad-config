local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",

    "bash",
    "c",
    "cmake",
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

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "prettier",
    "tailwindcss-language-server",
    "typescript-language-server",

    -- go
    "gopls",
    "goimports",

    -- utils
    "ansible-language-server",
    "bash-language-server",
    "cmake-language-server",
    "dockerfile-language-server",
    "json-lsp",
    "marksman",
    "sqlls",
    "terraform-ls",
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
