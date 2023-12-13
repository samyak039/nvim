return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  -- opts = {
  --   languages = {
  --     python = { template = { annotation_convention = "reST" } },
  --   },
  -- },
  config = true,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*"
  keys = {
    {
      "<leader>cg",
      ":lua require('neogen').generate()<CR>",
      desc = "Generate docstring",
    },
  },
}
