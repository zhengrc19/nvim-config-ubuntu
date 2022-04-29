local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  -- use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    -- config = function() require'nvim-tree'.setup {} end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use "moll/vim-bbye"
  -- provides close menu so is better
  use "Asheq/close-buffers.vim"
  -- use "kazhala/close-buffers.nvim"
  use "akinsho/toggleterm.nvim"
  -- use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim"
  use "lukas-reineke/indent-blankline.nvim"

  use {
    "Darazaki/indent-o-matic",
    config = function ()
        require('indent-o-matic').setup { max_lines = 2048, }
    end
  }
  -- use {
  --   'goolord/alpha-nvim',
  --   requires = { 'kyazdani42/nvim-web-devicons' },
  --   config = function ()
  --       require'alpha'.setup(require'alpha.themes.startify'.config)
  --   end
  -- }
  use "mhinz/vim-startify"
  -- use "Shatur/neovim-session-manager"
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  -- use "folke/which-key.nvim"

  -- commenting
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Colorschemes
  use "norcalli/nvim-colorizer.lua"
  use 'tjdevries/colorbuddy.vim'
  use { 'Th3Whit3Wolf/onebuddy', branch = 'main' }

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-calc" -- calculator
  use "hrsh7th/cmp-omni" -- omni-completion (for vimtex)
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lsp-signature-help"
  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  -- use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  -- Parenthesis
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "p00f/nvim-ts-rainbow"
  -- use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }
  use {
    'windwp/nvim-spectre',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  -- Markdown
  use "iamcco/markdown-preview.nvim"

  -- LaTeX
  use "lervag/vimtex"
  use "tpope/vim-surround"
  use "tpope/vim-repeat"

  -- RISC-V Assembly
  use "kylelaker/riscv.vim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
