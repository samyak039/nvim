return {
  {
    -- Use Neovim as a language server to inject LSP diagnostics, code actions,
    -- and more via Lua.
    "jose-elias-alvarez/null-ls.nvim",
    -- ft = { "html", "jinja", "python" },
    ft = { "html", "python" },
    opts = function()
      local null_ls = require("null-ls")
      return {
        sources = {
          -- json
          null_ls.builtins.diagnostics.jsonlint,

          -- lua
          null_ls.builtins.formatting.stylua,

          -- python
          null_ls.builtins.formatting.black,
          null_ls.builtins.diagnostics.djlint,
          -- null_ls.builtins.formatting.blackd, FIXME:
          null_ls.builtins.diagnostics.djlint,
          null_ls.builtins.diagnostics.mypy,
          null_ls.builtins.diagnostics.ruff,
        },
      }
    end,
  },
}
