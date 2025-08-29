return {
  {
    'saghen/blink.cmp',
    dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    event = 'InsertEnter',
    -- use a release tag to download pre-built binaries
    version = 'v0.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      snippets = { preset = 'luasnip' },
      keymap = { preset = 'default' },
      appearance = {
        -- Sets the fallback highlight groups to nvim-cmp's highlight groups
        -- Useful for when your theme doesn't support blink.cmp
        -- will be removed in a future release
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },

      -- optionally disable cmdline completions
      cmdline = {
        enabled = true,
        sources = function()
          local type = vim.fn.getcmdtype()
          -- Search forward and backward
          if type == '/' or type == '?' then
            return { 'buffer' }
          end
          -- Commands
          if type == ':' then
            return { 'cmdline' }
          end
          return {}
        end,
      },
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      completion = {
        accept = { auto_brackets = { enabled = true } },
        documentation = { window = { border = vim.g.borderStyle } },
        menu = {
          border = vim.g.borderStyle,
        },
        ghost_text = { enabled = true },
      },
      signature = { enabled = true, window = { border = vim.g.borderStyle } },
    },
    -- allows extending the providers array elsewhere in your config
    -- without having to redefine it
    opts_extend = { 'sources.default' },
  },
}
