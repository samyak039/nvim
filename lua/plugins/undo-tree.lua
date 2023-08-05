return {
  -- The undo history visualizer for VIM
  "mbbill/undotree",
  keys = {
    { "<leader>o",  "<cmd>UndotreeToggle<cr>", desc = "Undo History Visualizer" },
    { "<leader>uu", "<cmd>UndotreeToggle<cr>", desc = "Undo History Visualizer" },
  }
}
