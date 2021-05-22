return function(language_server_path)
  local bin_path = language_server_path .. "./vscode-css/css-language-features/server/dist/node/cssServerMain.js"

 return {
    cmd = { "node", bin_path, "--stdio" },
    filetypes = { 'css', 'less', 'scss', 'html' },
    root_dir = require'lspconfig'.util.root_pattern(".git", vim.fn.getcwd()),
    init_options = {
      provideFormatter = true,
    }
  }
end
