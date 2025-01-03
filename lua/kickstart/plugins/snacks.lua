return {
  -- lazygit
  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    opts = {
      lazygit = {},
      indent = {},
      -- notifier = {},
    },
    keys = {
      {
        '<leader>gf',
        function()
          Snacks.lazygit.log_file()
        end,
        desc = 'Lazygit Current File History',
      },
      {
        '<leader>gg',
        function()
          Snacks.lazygit()
        end,
        desc = 'Lazygit',
      },
      {
        '<leader>gl',
        function()
          Snacks.lazygit.log()
        end,
        desc = 'Lazygit Log (cwd)',
      },
    },
  },
}
