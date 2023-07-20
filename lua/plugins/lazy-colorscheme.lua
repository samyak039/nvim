return {
  -- CATPPUCCIN - Soothing pastel theme for the high-spirited!
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
  },

  -- GRUVBOX - Retro groove color scheme
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
  },

  -- NORD - An arctic, north-bluish color palette.
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    lazy = false,
  },

  -- TOKYONIGHT - A theme to celebrate the lights of Downtown Tokyo at night.
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
    opts = { style = "moon" },
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox" },
  },
}
