return {
  -- Portable package manager for Neovim that runs everywhere Neovim runs.
  -- Easily install and manage LSP servers, DAP servers, linters, and
  -- formatters.
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      --======--
      -- dart --
      --======--
      "dart-debug-adapter",

      --==========--
      -- html/css --
      --==========--
      -- "prettier",
      -- "prettierd",
      "tailwindcss-language-server",

      --======--
      -- json --
      --======--
      "json-lsp",
      "jsonlint",

      --=====--
      -- lua --
      --=====--
      "lua-language-server",
      "stylua",

      --========--
      -- python --
      --========--
      "black",
      -- "blackd-client",
      "debugpy",
      -- "djlint",
      "mypy",
      "pyright",
      "ruff",
      "ruff-lsp",
      -- "usort",

      --=================--
      -- text / markdown --
      --=================--
      -- "ltex-ls",
      -- "proselint",
      -- "remark-cli",
      -- -- "remark-language-server",
      -- "vale",
      -- -- "vale-ls",
    },
  },
}
