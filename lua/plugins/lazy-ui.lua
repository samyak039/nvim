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
    -- Indent guides for Neovim
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      -- char = "┃", -- thic
      char = "│", -- thin
      -- show_trailing_blankline_indent = true,
      -- show_current_context = true,
    }
  },
  {
    -- Neovim Lua plugin to visualize and operate on indent scope.
    "echasnovski/mini.indentscope",
    opts = {
      -- symbol = "┃", -- thic
      symbol = "│", -- thin
      draw = {
        animation = require('mini.indentscope').gen_animation.none(),
        -- priority = 2,
      },
    }
  },

  --=======--
  -- EXTRA --
  --=======--
  {
    -- Easily create and manage predefined window layouts, bringing a new edge to your workflow
    "folke/edgy.nvim",
    opts = {
      animate = { enabled = false }
    }
  }
}
