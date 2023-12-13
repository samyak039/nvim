return {
  {
    -- Solve Leetcode problems within Neovim fire
    "Dhanus3133/LeetBuddy.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("leetbuddy").setup({})
    end,
    keys = {
      { "<localleader>cq", "<cmd>LBQuestions<cr>", desc = "Leetcode List Questions" },
      { "<localleader>cl", "<cmd>LBQuestion<cr>",  desc = "Leetcode View Question" },
      { "<localleader>cr", "<cmd>LBReset<cr>",     desc = "Leetcode Reset Code" },
      { "<localleader>ct", "<cmd>LBTest<cr>",      desc = "Leetcode Run Code" },
      { "<localleader>cs", "<cmd>LBSubmit<cr>",    desc = "Leetcode Submit Code" },
    },
  }
  -- {
  --   -- Solve LeetCode problems in Vim!
  --   "ianding1/leetcode.vim",
  -- }
}
