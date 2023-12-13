return {
  -- Nvim Treesitter configurations and abstraction layer
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  commit = "f2778bd1a28b74adf5b1aa51aa57da85adfa3d16",
  opts = {
    indent = { enable = true },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "org" },
    },
    ensure_installed = {
      -- flutter,
      "dart",
      "groovy",

      -- html/css
      "css",
      "html",

      -- lua
      "lua",
      "luadoc",

      -- python
      "htmldjango",
      "ninja",
      "python",
      "rst",
      "toml",

      -- misc
      "bash",
      "ledger",
      "markdown",
      "markdown_inline",
      "org",
      "regex",
    },
  },

  --=========--
  -- PLUGINS --
  --=========--

  {
    -- Show code context
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      max_lines = 5,
    },
  },

  {
    -- Refactor module for nvim-treesitter
    "nvim-treesitter/nvim-treesitter-refactor",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

  {
    -- even better % fist_oncoming navigate and highlight matching words
    -- fist_oncoming modern matchit and matchparen.
    -- Supports both vim and neovim + tree-sitter.
    "andymass/vim-matchup",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

  {
    -- Rainbow delimiters for Neovim through Tree-sitter
    "HiPhish/nvim-ts-rainbow2",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "master",
    commit = "35a60f093fa15a303874975f963428a5cd24e4a0",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
