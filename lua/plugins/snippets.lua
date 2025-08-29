return {
  {
    'L3MON4D3/LuaSnip',
    -- follow latest release.
    version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = 'make install_jsregexp',
    config = function(_, opts)
      local luasnip = require 'luasnip'

      ---@diagnostic disable: undefined-field
      luasnip.setup(opts)

      -- Load my custom snippets:
      require('luasnip.loaders.from_vscode').lazy_load {
        paths = vim.fn.stdpath 'config' .. '/snippets',
      }
    end,
  },
}
