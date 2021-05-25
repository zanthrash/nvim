-- This config is heavily borrowed from
-- https://github.com/lucax88x/configs/tree/master/dotfiles/.config/nvim
-- https://github.com/ChristianChiarulli/LunarVim/tree/master

require 'zt.utils'
require 'zt.defaults'
require 'zt.plugins'
require 'zt.theme'
require 'zt.dashboard'
require 'zt.compe'
require 'zt.autopairs'

require 'zt.lsp'
-- require('zt.lsp.angular-ls')
require('zt.lsp.bash-ls')
require('zt.lsp.clangd')
require('zt.lsp.css-ls')
require('zt.lsp.dart-ls')
require('zt.lsp.docker-ls')
require('zt.lsp.efm-general-ls')
require('zt.lsp.elm-ls')
require('zt.lsp.emmet-ls')
require('zt.lsp.graphql-ls')
require('zt.lsp.go-ls')
require('zt.lsp.html-ls')
require('zt.lsp.json-ls')
require('zt.lsp.js-ts-ls')
require('zt.lsp.kotlin-ls')
require('zt.lsp.latex-ls')
require('zt.lsp.lua-ls')
require('zt.lsp.php-ls')
require('zt.lsp.python-ls')
require('zt.lsp.ruby-ls')
require('zt.lsp.rust-ls')
require('zt.lsp.svelte-ls')
require('zt.lsp.terraform-ls')
require('zt.lsp.tailwindcss-ls')
require('zt.lsp.vim-ls')
require('zt.lsp.vue-ls')
require('zt.lsp.yaml-ls')

require 'zt.git'
require 'zt.testing.remaps'
require 'zt.treesitter.settings'
require 'zt.which-key'

require 'zt.galaxyline'


vim['test#strategy'] = 'neovim'

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
