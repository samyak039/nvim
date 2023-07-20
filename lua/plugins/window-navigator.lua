return {
  -- Seamless navigation between tmux panes and vim splits
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to left window [tmux]", remap = true },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to down window", remap = true },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to up window", remap = true },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to right window", remap = true },
    { "<C-Tab>", "<cmd>TmuxNavigatePrevious<cr>", desc = "Go to previous window", remap = true },
  },
}
