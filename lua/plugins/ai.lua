return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'BufReadPost',
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<C-l>',
        },
      },
      panel = {
        enabled = false,
      },
    },
  },
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
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
        -- system_prompt as function ensures LLM always has latest MCP server state
        -- This is evaluated for every message, even in existing chats
        system_prompt = function()
          local hub = require('mcphub').get_hub_instance()
          return hub and hub:get_active_servers_prompt() or ''
        end,
        -- Using function prevents requiring mcphub before it's loaded
        custom_tools = function()
          return {
            require('mcphub.extensions.avante').mcp_tool(),
          }
        end,
      }
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'zbirenbaum/copilot.lua',
      --- The below dependencies are optional,
      'echasnovski/mini.icons',
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
  {
    'ravitemer/mcphub.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    build = 'npm install -g mcp-hub@latest', -- Installs `mcp-hub` node binary globally
    config = function()
      require('mcphub').setup {
        extensions = {
          avante = {
            make_slash_commands = true, -- make /slash commands from MCP server prompts
          },
        },
      }
    end,
  },
}
