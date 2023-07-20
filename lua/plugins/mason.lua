return {
  -- Portable package manager for Neovim that runs everywhere Neovim runs.
  -- Easily install and manage LSP servers, DAP servers, linters, and
  -- formatters.
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- html/css
      "prettier",
      "prettierd",
      "tailwindcss-language-server",

      -- json
      "json-lsp",
      "jsonlint",

      -- lua
      "lua-language-server",
      "stylua",

      -- python
      "black",
      -- "blackd-client", FIXME:
      "debugpy",
      "djlint",
      "mypy",
      "pyright",
      "ruff",
      "ruff-lsp",
    },
  },
}
