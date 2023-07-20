return {
  {
    "jcdickinson/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({})
    end,
  },
  -- { -- Free, ultrafast Copilot alternative for Vim and Neovim
  --   "Exafunction/codeium.vim",
  --   lazy = "VeryLazy",
  --   config = function()
  --     require("codeium").setup()
  --   end,
  -- },
}
