return {
  {
    --  A fancy, configurable, notification manager for NeoVim
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>sN",
        function()
          require("telescope").extensions.notify.notify()
        end,
        desc = "Notify History",
      },
    },
    opts = {
      timeout = 5000,
      stages = "static",
      render = "compact",
      fps = 60,
      top_down = true,
    },
  },
  {
    -- A snazzy bufferline for Neovim
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        style_preset = { require("bufferline").style_preset.no_italic },
        show_buffer_close_icons = false,
        -- themable = false,
        -- indicator = {
        --   -- icon = "┃", -- thic
        --   -- icon = "│", -- thin
        --   -- style = 'icon',
        --   style = 'underline'
        -- },
      },
      -- highlights = {
      --   -- tab_separator = {
      --   --   fg = '#FF0000',
      --   --   bg = '#FF0000',
      --   -- },
      --   -- tab_separator_selected = {
      --   --   fg = "#ebdbb2",
      --   --   bg = "#ebdbb2",
      --   --   sg = "#ebdbb2",
      --   -- }
      -- }
    },
  },
  {
    -- Indent guides for Neovim
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = { char = "│" },
      whitespace = {
        remove_blankline_trail = false,
      },
      scope = { enabled = false },
    },
    -- config = function()
    --   require("ibl").setup({
    --     indent = { char = "│" },
    --     whitespace = {
    --       remove_blankline_trail = false,
    --     },
    --     scope = { enabled = false },
    --   })
    -- end,
    -- opts = {
    --   -- -- char = "┃", -- thic
    --   -- char = "│", -- thin
    --   -- -- show_trailing_blankline_indent = true,
    --   -- -- show_current_context = true,
    --   indent = { char = "│" },
    --   whitespace = {
    --     remove_blankline_trail = false,
    --   },
    --   scope = { enabled = false },
    -- }
  },
  {
    -- Neovim Lua plugin to visualize and operate on indent scope.
    "echasnovski/mini.indentscope",
    opts = {
      -- symbol = "┃", -- thic
      symbol = "│", -- thin
      options = { try_as_border = true },
      draw = {
        animation = require("mini.indentscope").gen_animation.none(),
        -- priority = 2,
      },
    },
  },

  --=======--
  -- EXTRA --
  --=======--
  {
    -- -- Easily create and manage predefined window layouts, bringing a new edge to your workflow
    -- "folke/edgy.nvim",
    -- opts = {
    --   animate = { enabled = false }
    -- }
  },
}
