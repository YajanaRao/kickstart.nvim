return {
  -- { 'rose-pine/neovim', name = 'rose-pine' },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
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
}
