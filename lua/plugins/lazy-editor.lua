return {
  {
    -- Find, Filter, Preview, Pick. All lua, all the time.
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  {
    -- Navigate your code with search labels, enhanced character motions and Treesitter integration
    "folke/flash.nvim",
    opts = {
      labels = "0123456789",
    }
  },
  {
    -- Navigate and manipulate file system. Part of 'mini.nvim' library.
    "echasnovski/mini.files",
    opts = {
      windows = {
        width_preview = 60,
      },
    },
  },
}
