return {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- { 'rose-pine/neovim', name = 'rose-pine' },
  -- { 'ellisonleao/gruvbox.nvim', name = 'gruvbox' },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      -- no_italic = true,
      -- term_colors = true,
      transparent_background = false,
      -- styles = {
      --   comments = {},
      --   conditionals = {},
      --   loops = {},
      --   functions = {},
      --   keywords = {},
      --   strings = {},
      --   variables = {},
      --   numbers = {},
      --   booleans = {},
      --   properties = {},
      --   types = {},
      -- },
      color_overrides = {
        mocha = {
          base = '#000000',
          mantle = '#000000',
          crust = '#000000',
        },
      },
      integrations = {

        treesitter = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
      },
    },
  },
}
