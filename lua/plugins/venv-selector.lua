return {
  "linux-cultist/venv-selector.nvim",
  cmd = "VenvSelect",
  opts = {},
  keys = {
    {
      "<leader>cv",
      function()
        require("venv-selector").retrieve_from_cache()
      end,
      desc = "Select Last VirtualEnv",
    },
    { "<leader>cV", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" },
  },
}
