-- local filetype = vim.api.nvim_buf_get_option(0, 'filetype')

AddEventListener('show_diagnostic_popup_on_cursor_hold', { 'CursorHold <buffer>' }, function()
  vim.lsp.diagnostic.show_line_diagnostics({ show_header = false })
end)

