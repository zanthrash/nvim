return function(use)
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('ChristianChiarulli/neovim-codicons')
  use('christoomey/vim-tmux-navigator')
  use('tpope/vim-surround')
  use('nvim-tree/nvim-tree.lua')
  use('kyazdani42/nvim-web-devicons')

  -- lsp extras
  use({ "glepnir/lspsaga.nvim", branch = "main" })
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("config.whichkey").setup()
    end
  }

  use {
    "nvim-neotest/neotest",
    opt = true,
    wants = {
      "plenary.nvim",
      "nvim-treesitter",
      "FixCursorHold.nvim",
      "neotest-plenary",
      "neotest-jest",
      "neotest-go",
      "neotest-rust",
      "neotest-deno",
      "neotest-vitest",
      "neotest-vim-test",
    },
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-plenary",
      "haydenmeade/neotest-jest",
      "nvim-neotest/neotest-go",
      "rouge8/neotest-rust",
      "MarkEmmons/neotest-deno",
      "marilari88/neotest-vitest",
      "nvim-neotest/neotest-vim-test",
    },
    module = { "neotest" },
    config = function()
      require("config.neotest").setup()
    end
  }


  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  use({
    "vuki656/package-info.nvim",
    requires = "MunifTanjim/nui.nvim",
  })

end
