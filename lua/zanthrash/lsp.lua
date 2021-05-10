local function on_attach()

end

require'lspconfig'.tsserver.setup{ on_attach=onattach }
require'lspconfig'.gopls.setup{ on_attach=onattach }
require'lspconfig'.rust_analyzer.setup{ on_attach=onattach }



