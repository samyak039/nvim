return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  -- keys = {
  --   { "<localleader>do", "<cmd>FlutterOutlineToggle<cr>",                                   desc = "Flutter Outline" },
  --   { "<localleader>dt", function() require("telescope").extensions.flutter.commands() end, desc = "Flutter Tools" },
  --   { "<localleader>dv", function() require("telescope").extensions.flutter.fvm() end,      desc = "Flutter Versions" },
  -- }
  keys = {
    { "<leader>ha", function() require("harpoon.mark").add_file() end,            desc = "Add file" },
    { "<leader>hh", function() require("harpoon.ui").toggle_quick_menu() end,     desc = "Toggle Quick Menu" },
    { "<leader>hn", function() require("harpoon.ui").nav_next() end,              desc = "Harpoon Next" },
    { "<leader>hp", function() require("harpoon.ui").nav_prev() end,              desc = "Harpoon Prev" },
    { "<leader>ht", function() require("harpoon.term").gotoTerminal(1) end,       desc = "Toggle UI QuickMenu " },
    { "<leader>hu", function() require("harpoon.cmd-ui").toggle_quick_menu() end, desc = "Toggle Command QuickMenu " },
  }
}
