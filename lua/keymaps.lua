-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set('n', ';', ':', { desc = 'CMD enter command mode' })

-- Map `jk` and `jj` to escape in insert mode
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'jj', '<Esc>')

-- Buffers
vim.keymap.set('n', '<leader>bd', '<cmd>:bd<cr>', { desc = 'Delete Buffer and Window' })
-- vim.keymap.set('n', '<Leader>bn', ':bn<CR>', { desc = 'Next buffer' })
-- vim.keymap.set('n', '<Leader>bp', ':bp<CR>', { desc = 'Prev buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Previous Buffer' })
vim.keymap.set('n', '<TAB>', '<C-^>', { desc = 'Alternate buffers' })

-- Map move around with JK when in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- lines and characters movemnt for normal mode
vim.keymap.set('n', '<M-j>', '7j')
vim.keymap.set('n', '<M-k>', '7k')
vim.keymap.set('n', '<M-l>', '25l')
vim.keymap.set('n', '<M-h>', '25h')

-- lines and characters movemnt for visual mode
vim.keymap.set('v', '<M-j>', '7j')
vim.keymap.set('v', '<M-k>', '7k')
vim.keymap.set('v', '<M-l>', '25l')
vim.keymap.set('v', '<M-h>', '25h')

-- lines and characters movemnt for insert mode
vim.keymap.set('i', '<M-Down>', '<C-o>7j')
vim.keymap.set('i', '<M-Up>', '<C-o>7k')
vim.keymap.set('i', '<M-Right>', '<C-o>25l')
vim.keymap.set('i', '<M-Left>', '<C-o>25h')

-- Move current line / block with Shift-j/k
vim.keymap.set('n', 'J', ':m .+1<CR>==')
vim.keymap.set('n', 'K', ':m .-2<CR>==')

-- Write in normal mode
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

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

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

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

local split_sensibly = function()
  if vim.api.nvim_win_get_width(0) > math.floor(vim.api.nvim_win_get_height(0) * 2.3) then
    vim.cmd 'vs'
  else
    vim.cmd 'split'
  end
end

--  ─( Split "Sensibly" )───────────────────────────────────────────────
-- Should automatically split or vsplit based on Ratios
vim.keymap.set('n', '<leader>bs', split_sensibly, { desc = 'Alternate buffers' })

vim.keymap.set('n', '<leader>gg', function()
  vim.cmd 'terminal lazygit'
end, { desc = 'Lazy Git' })
-- vim: ts=2 sts=2 sw=2 et
