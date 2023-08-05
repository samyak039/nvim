return {
  -- Create key bindings that stick.
  "folke/which-key.nvim",
  opts = {
    defaults = {
      ["<leader>m"] = { name = "+local" },
    },
  },
}
