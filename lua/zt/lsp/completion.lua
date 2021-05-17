require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 0;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    emoji = true;
    -- ultisnips = true;
  };
}


vim.api.nvim_set_keymap('i', '<CR>', 'compe#confirm("<CR>")', { noremap = true, expr = true, silent = true })


-- require'compe'.setup {
--   enabled = true,
--   debug = false,
--   min_length = 1,

--   source = {
--     vsnip = {
--       flietypes = {'markdonw', 'json', 'yaml', 'css', 'scss', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'typescript.tsx'},
--       sticky_char = '0'
--     },
--     nvim_lua = { 'lua' },
--     nvim_lsp = {
--       flietypes = {'markdonw', 'json', 'yaml', 'css', 'scss', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'typescript.tsx'},
--     },
--     path = true,
--     buffer = true

--   }
-- }
