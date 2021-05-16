local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
  if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
    return
  end

  print("Downloading packer.nvim...")

  local directory = string.format(
    '%s/site/pack/packer/opt/',
    vim.fn.stdpath('data')
  )

  vim.fn.mkdir(directory, 'p')

  local out = vim.fn.system(string.format(
    'git clone %s %s',
    'https://github.com/wbthomason/packer.nvim',
    directory .. 'packer.nvim'
  ))

  print(out)
  print("Downloaded packer.vim")
  print("Reopen NVIM and run :PackerSync twice")

  return
end

return require('packer').startup {
  function(use)
    use {'wbthomason/packer.nvim', opt = true}

    -- GIT
    use 'tpope/vim-fugitive'
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }

    use 'glepnir/dashboard-nvim'
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
          plugins = {
            spelling = {
              enabled = true,
              suggestions = 20,
            }
          }
        }
      end
    }


    use {
      'kyazdani42/nvim-tree.lua',
      config = function() require 'zt.plugins.nvim-tree' end
    }

    -- use 'tpope/vim-commentary'
    use 'b3nj5m1n/kommentary'

    use 'tpope/vim-surround' -- Change surrounding arks
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
      config = function() require 'zt.plugins.telescope' end
    }

    use 'nvim-telescope/telescope-fzy-native.nvim'

    use 'vim-test/vim-test'

    -- Theming
    use 'gruvbox-community/gruvbox'

    -- icons
    use 'kyazdani42/nvim-web-devicons'

    use 'mbbill/undotree'

    -- LSP: Autocomplete & Linters
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/lsp-status.nvim'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use 'tjdevries/lsp_extensions.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'ray-x/lsp_signature.nvim'


    use {'pwntester/octo.nvim', config=function()
      require"octo".setup()
    end}

    use {
      'hrsh7th/nvim-compe', branch = 'master'
    }

        -- Snippets
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

    -- to download lsp servers
    -- TODO: check the tjdevries library
    -- use 'mattn/vim-lsp-settings'
    use 'kabouzeid/nvim-lspinstall'

    -- Language packs
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function() vim.cmd [[TSUpdate]] end
    }

    use 'haringsrob/nvim_context_vt' -- shows treesitter context in end of parenthesis

    use 'vim-airline/vim-airline'

  end


}
