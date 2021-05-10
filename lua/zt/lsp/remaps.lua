local M = {}

function M.set(cap, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', '<leader>tt', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)

  if cap.definitionProvider then
    buf_set_keymap('n', '<leader>tD', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", opts)
    buf_set_keymap('n', '<leader>td', "<cmd>lua require'lspsaga.provider'.definition()<CR>", opts)
    buf_set_keymap('n', 'gD', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", opts)
    buf_set_keymap('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  end

  if cap.implementationProvider then
    buf_set_keymap('n', '<leader>ti', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  end

  if cap.referenceProvider then
    buf_set_keymap('n', '<leader>tr', "<cmd>lua require('telescope.builtin').lsp_references()<CR>", opts)
  end


  if cap.documentSymbolProvider then
    buf_set_keymap('n', '<leader>to', "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", opts)
  end

  if cap.codeActionProvider then
    buf_set_keymap('n', '<leader>fa', "<cmd>lua require('telescope.builtin').lsp_code_actions({timeout = 1000})<CR>", opts)
    buf_set_keymap('v', '<leader>fa', "<cmd>lua require('telescope.builtin').lsp_range_code_actions({timeout = 1000})<CR>", opts)
    buf_set_keymap('n', '<leader>fo', "<cmd>lua require('zt.lsp.functions').organize_imports<CR>", opts)
  end

  if cap.documentFormattingProvider then
    buf_set_keymap('n', '<leader>ff', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  elseif cap.documentRangeFormattingProvider then
    buf_set_keymap('n', '<leader>ff', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  end

  if cap.renameProvider then
    buf_set_keymap('n', '<leader>rr', "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)
  end

  buf_set_keymap('n', '<leader>th', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)
  buf_set_keymap('n', '<leader>fe', "<cmd>lua require('zt.lsp.functions').show_diagnostics()<CR>", opts)

  buf_set_keymap('n', '<leader>fE', "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", opts)
  buf_set_keymap('n', '[e', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", opts)
  buf_set_keymap('n', ']e', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", opts)

  -- buf_set_keymap('n', '<leader>li', ':LspInfo()<CR>', opts)
  buf_set_keymap('n', '<leader>fcd', ':lua print(vim.inspect(vim.lsp.get_active_clients()))<CR>', opts)
  buf_set_keymap('n', '<leader>fcl', ':lua print(vim.lsp.get_log_path())<CR>', opts)

  vim.api.nvim_exec(
  [[
  inoremap <slient><expr> <C-p> compe#complete()
  inoremap <slient><expr> <Tab> compe#complete()
  inoremap <slient><expr> <CR> compe#confirm('<CR>')
  ]],
  true
  )

  -- using <Tab> for navigation in completion
  vim.api.nvim_exec(
  [[
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  ]],
  true
  )

end

return M
