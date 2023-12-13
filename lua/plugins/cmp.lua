return {
  { -- A completion plugin for neovim coded in Lua.
    "hrsh7th/nvim-cmp",

    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.sources = cmp.config.sources(
        vim.list_extend(opts.sources, { { name = "codeium" } })
      )

      opts.formatting.format = function(_, item)
        local icons = require("lazyvim.config").icons.kinds
        if icons[item.kind] then
          item.kind = icons[item.kind] .. item.kind
        elseif item.kind == "Codeium" then
          item.kind = icons["Copilot"] .. item.kind
        end
        return item
      end
    end,
  },
}
