return {
  -- { 'rose-pine/neovim', name = 'rose-pine' },
  -- { 'ellisonleao/gruvbox.nvim', name = 'gruvbox' },
  {
    'YajanaRao/forestflower',
    lazy = false,
    priority = 1000,
    config = function()
      require('forestflower').setup {
        flavour = 'night',
        italics = true,
      }
      vim.cmd.colorscheme 'forestflower'
    end,
  },
  -- {
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
  --
}
