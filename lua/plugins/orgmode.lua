return {
  -- Orgmode clone written in Lua for Neovim 0.8+.
  'nvim-orgmode/orgmode',
  ft = { 'org' },
  config = true,
  opts = function()
    local orgmode = require('orgmode')
    orgmode.setup_ts_grammar()
  end
}
