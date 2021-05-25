local nvim_lsp = require'lspconfig'
local configs = require'lspconfig/configs'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not nvim_lsp.emmet_ls then
  configs.emmet_ls = {
    default_config = {
      cmd = {'emmet-ls', '--stdio'};
      filetypes = {'html', 'css', 'typescriptreact', 'javascriptreact'};
      root_dir = function()
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end


nvim_lsp.emmet_ls.setup {
  capabilities = capabilities,
  -- on_attach = require'zt.lsp'.common_on_attach
}
