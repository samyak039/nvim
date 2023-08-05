return {
  {
    -- Use Neovim as a language server to inject LSP diagnostics, code actions,
    -- and more via Lua.
    "jose-elias-alvarez/null-ls.nvim",
    -- ft = { "html", "jinja", "python" },
    ft = { "html", "htmldjango ", "python" },
    opts = function()
      local null_ls = require("null-ls")
      return {
        sources = {
          --======--
          -- dart --
          --======--
          null_ls.builtins.formatting.dart_format,

          --======--
          -- json --
          --======--
          null_ls.builtins.diagnostics.jsonlint,

          --==========--
          -- prettier --
          --==========--
          null_ls.builtins.formatting.prettierd,

          --========--
          -- python --
          --========--
          null_ls.builtins.formatting.black,
          -- null_ls.builtins.formatting.blackd,
          -- null_ls.builtins.formatting.isort,
          null_ls.builtins.formatting.ruff,
          -- null_ls.builtins.formatting.usort,
          -- null_ls.builtins.diagnostics.djlint,
          null_ls.builtins.diagnostics.mypy.with({ extra_args = { "--ignore-missing-imports" } }),
          null_ls.builtins.diagnostics.ruff,

          --=================--
          -- text / markdown --
          --=================--
          -- null_ls.builtins.code_actions.proselint,
          -- null_ls.builtins.diagnostics.proselint,
          -- null_ls.builtins.diagnostics.vale,
          -- null_ls.builtins.formatting.remark,
        },
      }
    end,
  },
}
