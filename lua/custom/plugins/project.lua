-- Ensures file explorer pane is context-aware
return {
  { -- Project and cwd management
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup{
        detection_methods = { 'pattern', 'lsp' },
        patterns = {
          '.git',
        }
      }
    end,
  },
}
