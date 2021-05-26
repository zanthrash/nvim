local treesitter = require'nvim-treesitter.configs'

treesitter.setup {
  ensure_installed = {"typescript", "html", "tsx", "lua", "json", "rust", "go", "css", "javascript"},
  highlight = {
    enable = true,
  },
  autotag = {enable = true },
  context_commentstring = {
    enable = true
  }

}
