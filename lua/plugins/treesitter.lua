return {
  -- Nvim Treesitter configurations and abstraction layer
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
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
  }
}
