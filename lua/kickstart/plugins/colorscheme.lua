return {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- { 'rose-pine/neovim', name = 'rose-pine' },
  -- { 'ellisonleao/gruvbox.nvim', name = 'gruvbox' },
  {
    'YajanaRao/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.cmd.colorscheme 'everforest'
    end,
  },
  -- {
  --   -- 'catppuccin/nvim',
  --   'folke/tokyonight.nvim',
  --   name = 'tokyonight',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     -- flavour = 'mocha', -- latte, frappe, macchiato, mocha
  --     theme = 'tokyonight',
  --     terminal_colors = true,
  --     transparent = false,
  --     styles = {
  --       sidebars = 'transparent',
  --       floats = 'transparent',
  --     },
  --   },
  -- },
}
