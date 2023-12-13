return {
  -- Set of preconfigured snippets for different languages.
  "rafamadriz/friendly-snippets",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip").filetype_extend("dart", { "flutter" })
  end,
}
