return {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- { 'rose-pine/neovim', name = 'rose-pine' },
  -- { 'ellisonleao/gruvbox.nvim', name = 'gruvbox' },
  {
    -- 'catppuccin/nvim',
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    lazy = false,
    priority = 1000,
    opts = {
      -- flavour = 'mocha', -- latte, frappe, macchiato, mocha
      theme = 'tokyonight',
      -- no_italic = true,
      terminal_colors = true,
      -- dim_inactive = {
      --   enabled = true, -- dims the background color of inactive window
      --   shade = 'dark',
      --   percentage = 0.15, -- percentage of the shade to apply to the inactive window
      -- },
      -- default_integrations = true,
      --
      transparent = true,
      -- transparent_background = true,
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
      -- color_overrides = {
      --   mocha = {
      --     -- text = '#ffffff',
      --     -- base = '#000000',
      --     -- mantle = '#000000',
      --     -- crust = '#000000',
      --   },
      -- },
      -- integrations = {
      --   cmp = true,
      --   mason = true,
      --   gitsigns = true,
      --   telescope = false,
      --   treesitter = true,
      --   mini = {
      --     enabled = true,
      --     indentscope_color = '',
      --   },
      --   lsp_trouble = true,
      --   which_key = true,
      -- },
    },
  },
}
