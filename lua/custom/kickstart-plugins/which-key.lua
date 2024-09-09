return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      plugins = { presets = { operators = false } },
    },
    config = function(_, opts) -- This is the function that runs, AFTER loading
      require('which-key').setup(opts)

      -- Document existing key chains
      require('which-key').add {
        {"<leader>c", group = "[C]ode" },
        {"<leader>c_", hidden = true },
        {"<leader>g", group = "[G]it" },
        {"<leader>g_", hidden = true },
        {"<leader>s", group = "[S]earch" },
        {"<leader>s_", hidden = true },
      }
    end,
  },
}
