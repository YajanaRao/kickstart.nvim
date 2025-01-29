return {
  -- lazygit
  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    opts = {
      lazygit = {},
      indent = {},
      bigfiles = {},
      -- notifier = {},
      picker = {
        formatters = {
          file = {
            filename_first = true,
          },
        },
      },
      -- notifier = {},
    },
    keys = {
      {
        'gd',
        function()
          Snacks.picker.lsp_definitions()
        end,
        desc = 'Goto Definition',
      },
      {
        'gD',
        function()
          Snacks.picker.lsp_declarations()
        end,
        desc = 'Goto Declaration',
      },
      {
        'gr',
        function()
          Snacks.picker.lsp_references()
        end,
        nowait = true,
        desc = 'References',
      },
      {
        'gI',
        function()
          Snacks.picker.lsp_implementations()
        end,
        desc = 'Goto Implementation',
      },
      {
        'gy',
        function()
          Snacks.picker.lsp_type_definitions()
        end,
        desc = 'Goto T[y]pe Definition',
      },
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
          Snacks.picker.git_log()
        end,
        desc = 'Git Log (cwd)',
      },
      {
        '<leader>gs',
        function()
          Snacks.picker.git_status()
        end,
        desc = 'Git Status',
      },
      {
        '<leader>gb',
        function()
          Snacks.picker.git_branches()
        end,
        desc = 'Git Branches',
      },
      -- find
      {
        '<leader>fg',
        function()
          Snacks.picker.git_files()
        end,
        desc = 'Find Git Files',
      },
      {
        '<leader>fr',
        function()
          Snacks.picker.recent()
        end,
        desc = 'Recent',
      },
      -- Search
      {
        '<leader>sf',
        function()
          Snacks.picker.files()
        end,
        desc = 'Search Files',
      },
      {
        '<leader>sb',
        function()
          Snacks.picker.buffers()
        end,
        desc = 'Buffers',
      },
      {
        '<leader>sc',
        function()
          Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
        end,
        desc = 'Find Config File',
      },
      {
        '<leader>sw',
        function()
          Snacks.picker.grep_word()
        end,
        desc = 'Visual selection or word',
        mode = { 'n', 'x' },
      },
      {
        '<leader>sl',
        function()
          Snacks.picker.lines()
        end,
        desc = 'Buffer Lines',
      },
      {
        '<leader>sg',
        function()
          Snacks.picker.grep {
            regex = false,
          }
        end,
        desc = 'Grep',
      },
      {
        '<leader>s/',
        function()
          Snacks.picker.grep_buffers()
        end,
        desc = 'Grep Open Buffers',
      },
      {
        '<leader>sj',
        function()
          Snacks.picker.jumps()
        end,
        desc = 'Jumps',
      },
      {
        '<leader>sr',
        function()
          Snacks.picker.resume()
        end,
        desc = 'Resume',
      },
      {
        '<leader>sq',
        function()
          Snacks.picker.qflist()
        end,
        desc = 'Quickfix List',
      },
      -- LSP
      {
        'gd',
        function()
          Snacks.picker.lsp_definitions()
        end,
        desc = 'Goto Definition',
      },
      {
        'gr',
        function()
          Snacks.picker.lsp_references()
        end,
        nowait = true,
        desc = 'References',
      },
      {
        'gI',
        function()
          Snacks.picker.lsp_implementations()
        end,
        desc = 'Goto Implementation',
      },
      {
        'gy',
        function()
          Snacks.picker.lsp_type_definitions()
        end,
        desc = 'Goto T[y]pe Definition',
      },
      {
        '<leader>ds',
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = '[D]ocument [S]ymbols',
      },
      {
        '<leader>df',
        function()
          Snacks.picker.lsp_symbols {
            filter = {
              default = {
                'Function',
                'Method',
              },
            },
          }
        end,
        desc = '[D]ocument [F]unctions',
      },
      -- Scratch
      {
        '<leader>tt',
        function()
          Snacks.scratch { icon = ' ', name = 'Todo', ft = 'markdown', file = '~/Documents/Notes/To Do/TODO.md' }
        end,
        desc = 'Todo List',
      },
    },
  },
}
