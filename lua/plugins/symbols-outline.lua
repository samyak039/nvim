return {
  -- A tree like view for symbols in Neovim using the Language Server Protocol.
  -- Supports all your favourite languages.
  "simrat39/symbols-outline.nvim",
  cmd = "SymbolsOutline",
  keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  config = true,
}
