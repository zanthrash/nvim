require'lspconfig'.intelephense.setup {
    cmd = { DATA_PATH .. "/lspinstall/php/node_modules/.bin/intelephense", "--stdio" },
    on_attach = require'zt.lsp'.common_on_attach
}
