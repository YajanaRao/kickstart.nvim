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
      terminal_colors = true,
      transparent = false,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    },
  },
}
