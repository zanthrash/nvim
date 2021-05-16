local lsp = require('lspconfig')

local functions = require "zt.utils.functions"
local lsp_status = require('lsp-status')
local remaps = require('zt.lsp.remaps')

-- for debugging lsp
-- Levels by name: 'trace', 'debug', 'info', 'warn', 'error'
vim.lsp.set_log_level("debug")

local function on_attach(client, bufnr)
  remaps.set(client.server_capabilities, bufnr)

  lsp_status.on_attach(client, bufnr)

  -- adds nice icons to completion
  require'lspkind'.init()

  -- ads signature autocompletion while typing
  require'lsp_signature'.on_attach()

end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      spacing = 0,
      prefix = "■",
    },

    signs = true,

    update_in_insert = false,
  }
)

lsp_status.register_progress()

local default_lsp_config = { on_attach = on_attach, capabilities = lsp_status.capabilities }

local language_server_path = vim.fn.stdpath("data") .. "/lspinstall"


local servers = {
  -- efm = require('zt.lsp.servers.efm')(language_server_path),
  -- diagnosticls = require('zt.lsp.servers.diagnosticls')(language_server_path),
  -- bashls = require('zt.lsp.servers.bashls')(language_server_path)
  -- yamlls = require('zt.lsp.servers.yamlls')(language_server_path)
  -- jsonls = require('zt.lsp.servers.jsonls')(language_server_path)
  tsserver = require('zt.lsp.servers.tsserver')(language_server_path, on_attach),
  -- html = require('zt.lsp.servers.htmlls')(language_server_path)
  -- cssls = require('zt.lsp.servers.cssls')(language_server_path)
  sumneko_lua = require('zt.lsp.servers.sumneko_lua')(language_server_path)
  -- dockerls = require('zt.lsp.servers.dockerls')(language_server_path)
}

for server, config in pairs(servers) do
  lsp[server].setup(vim.tbl_deep_extend("force", default_lsp_config, config))
end


