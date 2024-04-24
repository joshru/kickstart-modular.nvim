return {
  'gennaro-tedesco/nvim-possession',
  dependencies = {
    'ibhagwan/fzf-lua',
  },
  config = true,
  init = function()
    local possession = require 'nvim-possession'
    vim.keymap.set('n', '<leader>pl', function()
      possession.list()
    end, { desc = '[P]osession [L]ist' })
    vim.keymap.set('n', '<leader>pn', function()
      possession.new()
    end, { desc = '[P]osession [N]ew' })
    vim.keymap.set('n', '<leader>pu', function()
      possession.update()
    end, { desc = '[P]osession [U]pdate' })
    vim.keymap.set('n', '<leader>pd', function()
      possession.delete()
    end, { desc = '[P]osession [D]elete' })
  end,
}
