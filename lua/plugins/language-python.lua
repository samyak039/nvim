return {
  {
    -- Allows selection of python virtual environment from within neovim
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    keys = {
      { "<leader>cv", function() venv.retrieve_from_cache() end, desc = "Python last VirtualEnv" },
      { "<leader>cV", "<cmd>:VenvSelect<cr>",                    desc = "Python Select VirtualEnv" },
    },
  }
}
