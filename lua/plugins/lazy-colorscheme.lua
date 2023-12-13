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
    opts = {
      italic = {
        comments = false,
      },
      -- transparent_mode = true,
      --=========--
      -- default --
      --=========--
      -- undercurl = true,
      -- underline = true,
      -- bold = true,
      -- italic = {
      --   strings = true,
      --   comments = true,
      --   operators = false,
      --   folds = true,
      -- },
      -- strikethrough = true,
      -- invert_selection = false,
      -- invert_signs = false,
      -- invert_tabline = false,
      -- invert_intend_guides = false,
      -- inverse = true, -- invert background for search, diffs, statuslines and errors
      -- contrast = "",  -- can be "hard", "soft" or empty string
      -- palette_overrides = {},
      -- dim_inactive = false,
      -- transparent_mode = false,
    }
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
    opts = {
      style = "moon",
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox" },
  },
}
