-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Map `jk` and `jj` to escape in insert mode
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'jj', '<Esc>')

-- Smart delete
vim.keymap.set('n', 'dd', function()
  if vim.api.nvim_get_current_line():match '^%s*$' then
    return '"_dd'
  else
    return 'dd'
  end
end, { desc = "Smart dd, don't yank empty lines", expr = true })

-- Buffers
vim.keymap.set('n', '<leader>bd', '<cmd>:bd<cr>', { desc = 'Delete Buffer and Window' })
vim.keymap.set('n', '<C-l>', ':bn<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<C-h>', ':bp<CR>', { desc = 'Prev buffer' })
vim.keymap.set('n', '<TAB>', '<C-^>', { desc = 'Alternate buffers' })
--  ─( Split "Sensibly" )───────────────────────────────────────────────
local split_sensibly = function()
  if vim.api.nvim_win_get_width(0) > math.floor(vim.api.nvim_win_get_height(0) * 2.3) then
    vim.cmd 'vs'
  else
    vim.cmd 'split'
  end
end
-- Should automatically split or vsplit based on Ratios
vim.keymap.set('n', '<leader>bs', split_sensibly, { desc = 'Alternate buffers' })

-- lines and characters movemnt for normal mode
vim.keymap.set('n', 'J', '7j')
vim.keymap.set('n', 'K', '7k')
vim.keymap.set('n', 'L', '25l')
vim.keymap.set('n', 'H', '25h')

-- lines and characters movemnt for visual mode
vim.keymap.set('v', 'J', '7j')
vim.keymap.set('v', 'K', '7k')
vim.keymap.set('v', 'L', '25l')
vim.keymap.set('v', 'H', '25h')

-- lines and characters movemnt for insert mode
vim.keymap.set('i', '<M-Down>', '<C-o>7j')
vim.keymap.set('i', '<M-Up>', '<C-o>7k')
vim.keymap.set('i', '<M-Right>', '<C-o>25l')
vim.keymap.set('i', '<M-Left>', '<C-o>25h')

-- Write in normal mode
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- TODO: figure out what does this do
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.keymap.set('n', '<leader>gg', function()
  vim.cmd 'terminal lazygit'
end, { desc = 'Lazy Git' })
-- vim: ts=2 sts=2 sw=2 et
