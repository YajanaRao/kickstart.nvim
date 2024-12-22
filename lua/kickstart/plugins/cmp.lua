return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    event = 'InsertEnter',
    -- use a release tag to download pre-built binaries
    version = 'v0.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default' },
      appearance = {
        -- Sets the fallback highlight groups to nvim-cmp's highlight groups
        -- Useful for when your theme doesn't support blink.cmp
        -- will be removed in a future release
        use_nvim_cmp_as_default = true,
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'normal',
      },

      -- default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
        -- optionally disable cmdline completions
        -- cmdline = {},
      },
      completion = {
        accept = { auto_brackets = { enabled = true } },
        menu = { border = vim.g.borderStyle },
        documentation = { window = { border = vim.g.borderStyle } },
      },
      signature = { enabled = true, window = { border = 'single' } },
    },
    -- allows extending the providers array elsewhere in your config
    -- without having to redefine it
    opts_extend = { 'sources.default' },
  },
}
