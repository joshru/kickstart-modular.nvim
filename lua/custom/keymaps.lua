-- [[ Custom Keymaps ]]
-- Quit
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = '[Q]uit' })
-- Write
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = '[W]rite to file' })
-- Unmap gQ
vim.keymap.set('', 'gQ', '<Nop>', { noremap = true })
-- Unmap default 's' to prevent interferring with mini.surround
vim.keymap.set({ 'n', 'x' }, 's', '<Nop>)
-- Open a new Vim Tab
vim.keymap.set('n', '<leader>T', '<cmd>tabnew<CR>', { desc = 'Open *T*ab' })
-- Show code diagnostic error
vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, { desc = '[C]ode diagnostic [E]rror messages' })
-- Format code
vim.keymap.set('n', '<leader>cf', function()
  vim.lsp.buf.format { asinc = true }
end, { desc = '[C]ode [F]ormat' })
-- Swap between header and source
vim.keymap.set('n', 'ga', '<cmd>ClangdSwitchSourceHeader<CR>', { desc = '[G]o to [a]lternate' })
-- Go to implementation
-- vim.keymap.set('n', '<leader>gi', require('telescope.builtin').lsp_type_definitions, { desc = '[G]o to [I]mplementation' })
-- Hide code diagnostics
vim.keymap.set('n', '<leader>ch', '<cmd>lua vim.diagnostic.hide()<CR>', { desc = '[C]ode [H]ide Diagnostics' })
-- Show code diagnostics
vim.keymap.set('n', '<leader>cd', '<cmd>lua vim.diagnostic.show()<CR>', { desc = '[C]ode Show [D]iagnostics' })
-- Git blame for line
vim.keymap.set('n', '<leader>gl', '<cmd>Gitsigns blame_line<CR>', { desc = '[G]it [B]lame' })
-- Git revert current hunk
vim.keymap.set('n', '<leader>gr', '<cmd>Gitsigns reset_hunk<CR>', { desc = '[G]it [R]evert' })
-- Move to next Git hunk
vim.keymap.set('n', '<leader>gh', '<cmd>Gitsigns next_hunk<CR>', { desc = '[G]it Next [H]unk' })
-- Move to previous Git hunk
vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns prev_hunk<CR>', { desc = '[G]it [P]revious Hunk' })
-- Show original from Git
vim.keymap.set('n', '<leader>go', '<cmd>Gitsigns preview_hunk<CR>', { desc = '[G]it View [O]riginal' })
-- Show blame for current file
vim.keymap.set('n', '<leader>gB', '<cmd>Gitsigns blame<CR>', { desc = '[G]it [B]lame File' })
-- Show blame for current line
vim.keymap.set('n', '<leader>gb', '<cmd>Gitsigns blame_line<CR>', { desc = '[G]it [B]lame Line' }
  
-- Vim Tab navigation
vim.keymap.set('', '<C-PageUp>', '<cmd>tabprevious<CR>', { desc = 'Previous tab', silent = true })
vim.keymap.set('', '<C-PageDown>', '<cmd>tabnext<CR>', { desc = 'Next tab', silent = true })
vim.keymap.set('', '<C-S-PageUp>', '<cmd>tabmove -1<CR>', { desc = 'Move tab left', silent = true })
vim.keymap.set('', '<C-S-PageDown>', '<cmd>tabmove +1<CR>', { desc = 'Move tab right', silent = true })

-- Configure vim live grep args plugin
vim.keymap.set('n', '<leader>sg', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { desc = '[S]earch with Live Grep [A]rgs' })
