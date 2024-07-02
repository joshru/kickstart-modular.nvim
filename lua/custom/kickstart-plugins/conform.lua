-- Shadows the orignal conform plugin to allow autoformat for C and C++ files
return {
  { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      format_on_save = function(bufnr)
        local disable_filetypes = { proto = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
