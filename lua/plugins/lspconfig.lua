return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {},
      ruff_lsp = {},
      dartls = {},
      -- tailwindcss = { filetypes_exclude = { "markdown" } },
    },
    setup = {
      ruff_lsp = function()
        require("lazyvim.util").lsp.on_attach(function(client, _)
          if client.name == "ruff_lsp" then
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
          end
        end)
      end,
      -- tailwindcss = function(_, opts)
      --   local tw = require("lspconfig.server_configurations.tailwindcss")
      --   --- @param ft string
      --   opts.filetypes = vim.tbl_filter(function(ft)
      --     return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
      --   end, tw.default_config.filetypes)
      -- end,
    },
  },
}
