return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'rouge8/neotest-rust',
    'alfaix/neotest-gtest',
  },
  init = function()
    require('neotest').setup {
      adapters = {
        require('neotest-gtest').setup {
          is_test_file = function(file_path)
            local lib = require 'neotest.lib'
            local elems = vim.split(file_path, lib.files.sep, { plain = true })
            local filename = elems[#elems]
            if filename == '' then -- directory
              return false
            end
            local extsplit = vim.split(filename, '.', { plain = true })
            local extension = extsplit[#extsplit]
            local fname_last_part = extsplit[#extsplit - 1]
            local _test_extensions = {
              ['cpp'] = true,
              ['cppm'] = true,
              ['cc'] = true,
              ['cxx'] = true,
              ['c++'] = true,
            }
            local result = _test_extensions[extension]
                and (vim.startswith(filename, 'test_') or vim.endswith(fname_last_part, '_test') or vim.endswith(fname_last_part, '_unittest'))
              or false
            return result
          end,
        },
        require 'neotest-rust' {
          args = { '--failure-output final' },
        },
      },
    }
  end,
  config = function()
    require('which-key').register {
      ['<leader>t'] = { name = '[T]est', _ = 'which_key_ignore' },
    }
    vim.keymap.set('n', '<leader>tt', function()
      require('neotest').run.run()
    end, { desc = '[T]est current [T]est', noremap = true })

    vim.keymap.set('n', '<leader>tf', function()
      require('neotest').run.run(vim.fn.expand '%')
    end, { desc = '[T]est [F]ile', noremap = true })

    vim.keymap.set('n', '<leader>to', function()
      require('neotest').output.open { false }
    end, { desc = '[T]est [O]utput', noremap = true })

    vim.keymap.set('n', '<leader>tO', function()
      require('neotest').output_panel.toggle()
    end, { desc = '[T]est *O*utput Pannel', noremap = true })

    vim.keymap.set('n', '<leader>ts', function()
      require('neotest').run.stop()
    end, { desc = '[T]est [S]top', noremap = true })

    vim.keymap.set('n', '<leader>ta', function()
      require('neotest').run.attach()
    end, { desc = '[T]est [A]ttach', noremap = true })

    vim.keymap.set('n', '<leader>tS', function()
      require('neotest').summary.toggle()
    end, { desc = '[T]est [S]ummary', noremap = true })
  end,
}
