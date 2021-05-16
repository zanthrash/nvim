-- This config is heavily borrowed from
-- https://github.com/lucax88x/configs/tree/master/dotfiles/.config/nvim

require 'zt.utils'
require 'zt.defaults'
require 'zt.plugins'
require 'zt.theme'
require 'zt.lsp'
require 'zt.git'
require 'zt.testing.remaps'
require 'zt.treesitter.settings'


vim['test#strategy'] = 'neovim'

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- DASHBOARD
vim.dashboard_custom_footer = {'zanthrash.com'}
vim.g.dashboard_custom_header = {
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}
vim.g.dashboard_session_directory = '~/.cache/nvim/session'
vim.g.dashboard_default_executive = 'telescope'
--[[ vim.g.dashboard_preview_command = 'cat'
vim.g.dashboard_preview_pipeline = 'lolcat'
vim.g.dashboard_preview_file = '~/.config/nvim/neovim.cat' ]]
vim.g.dashboard_preview_file_height = 12
vim.g.dashboard_preview_file_width = 8

