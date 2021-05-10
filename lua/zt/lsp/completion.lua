require'compe'.setup {
  enabled = true,
  debug = false,
  min_length = 2,

  source = {
    vsnip = {
      flietypes = {'markdonw', 'json', 'yaml', 'css', 'scss', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'typescript.tsx'},
      sticky_char = '0'
    },
    nvim_lua = { 'lua' },
    nvim_lsp = {
      flietypes = {'markdonw', 'json', 'yaml', 'css', 'scss', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'typescript.tsx'},
    },
    path = true,
    buffer = true

  }
}
