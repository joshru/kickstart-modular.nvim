return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    init = function()
      -- Add indentation textobjects
      local mini_indentscope = require 'mini.indentscope'
      mini_indentscope.setup { draw = { animation = mini_indentscope.gen_animation.none() }, symbol = '' }
      -- Add auto symbol closure
      require('mini.pairs').setup()
    end,
  },
}
