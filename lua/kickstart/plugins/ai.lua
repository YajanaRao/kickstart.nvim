return {
  {
    'github/copilot.vim',
  },
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    -- build = 'make',
    build = vim.loop.os_uname().sysname == 'Windows_NT' and 'powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false' or 'make',
    config = function()
      require('avante_lib').load() -- Essential to load avante templates
      require('avante').setup {
        -- add any setup here
        provider = 'copilot', -- Set to "claude" or another AI provider if preferred
        mappings = {
          suggestion = {
            accept = '<M-l>',
            next = '<M-]>',
            prev = '<M-[>',
          },
        },
      }
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --- The below dependencies are optional,
      'echasnovski/mini.icons',
      'zbirenbaum/copilot.lua', -- for providers='copilot'
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { 'markdown', 'Avante' },
        },
        ft = { 'markdown', 'Avante' },
      },
    },
  },
}