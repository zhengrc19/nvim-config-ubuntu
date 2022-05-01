# Neovim Config (Ubuntu)
This is my personal [Neovim](https://github.com/neovim/neovim) config for Ubuntu systems. As a CS undergrad at Tsinghua currently the config is built around course projects, including Python, C/C++, <img src="https://upload.wikimedia.org/wikipedia/commons/9/92/LaTeX_logo.svg" height=17>and some Assembly code.

The config is purely written in Lua, as well as most plugins used. However I could not resist the quality of [tpope](https://github.com/tpope/)'s and other great Vimscript plugins, so I'm not strictly sticking to Lua for a specific plugin's language.

| Attribute   | Current Value    |
|--------------- | --------------- |
| Version   | Neovim 0.7.0   |
| Linux System   | Ubuntu 20.04 LTS on Windows 11 WSL   |

# Screenshots

![dev-page](https://github.com/zhengrc19/nvim-config-ubuntu/raw/master/README.assets/dev-page.png)

![start-page](https://github.com/zhengrc19/nvim-config-ubuntu/raw/master/README.assets/start-page.png)

![latex](https://github.com/zhengrc19/nvim-config-ubuntu/raw/master/README.assets/latex.png)

![lazygit](https://github.com/zhengrc19/nvim-config-ubuntu/raw/master/README.assets/lazygit.png)

![telescope](https://github.com/zhengrc19/nvim-config-ubuntu/raw/master/README.assets/telescope.png)

# Features

# List of Plugins and Usages

I starred every plugin I use to show support. I recommend everyone else to do so as well.

### Basic Features
- **File Tree**: [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- **Status Line**: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- **Buffer Line (Tab Bar)**: [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

### Better Editor
- **Better Syntax Highlighting**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Paired Brackets**: [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- **Rainbow-Colored Brackets**: [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- **Indentation**
  - Auto determine indent width of file: [intent-o-matic](https://github.com/Darazaki/indent-o-matic)
  - Indentation guides: [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

### IDE Features
- **Start Page and Project Management**: [vim-startify](https://github.com/mhinz/vim-startify)
- **Git Sign Column**: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- **Project-scope Find and Replace**: [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
- **Syntax-specific Commenting**: [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- **Fuzzy Finding**: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **Integrated Terminal**: [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- **Language Server Protocol (LSP)**:
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): to enable LSP.
  - [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer): to install LSP servers.
- **Autocompletion**:
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): basic completion plugin. Supported completion sources:
    - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): completion from LSP server.
    - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer): completion from open buffers.
    - [cmp-path](https://github.com/hrsh7th/cmp-path): completion from path of file system.
    - [cmp-calc](https://github.com/hrsh7th/cmp-calc): calculator.
    - [cmp-omni](https://github.com/hrsh7th/cmp-omni): omni-completion (for [Vimtex]((https://github.com/lervag/vimtex))).
    - [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline): command line completion.
    - [cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip): snippet completion.
    - [cmp-nvim-lsp-signature-help](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help): parameter types when calling a function.
- **Snippets**:
  - [LuaSnip](https://github.com/L3MON4D3/LuaSnip): snippet engine
  - [friendly-snippets](https://github.com/rafamadriz/friendly-snippets): snippet bank

### Language Specific
- **Markdown**: [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- <img src="https://upload.wikimedia.org/wikipedia/commons/9/92/LaTeX_logo.svg" height=17>: [vimtex](https://github.com/lervag/vimtex)
- **RISC-V Assembly**: [riscv.vim](https://github.com/kylelaker/riscv.vim)

### Colorscheme: [onebuddy](https://github.com/Th3Whit3Wolf/onebuddy)

### Useful Features
- **Show Color of Hex Value as Highlight**: [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- **Don't Change Window Layout When Closing Buffer**: [vim-bbye](https://github.com/moll/vim-bbye)
- **Choose Which Buffers to Close**: [close-buffers.vim](https://github.com/Asheq/close-buffers.vim)

### Helper Packages
- **Package Manager**: [packer.nvim](https://github.com/wbthomason/packer.nvim)
- **Icons**: [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- **Lua Function Library**: [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- **Fix LSP Doc Highlight**: [FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim)
- **Speeding Up**: [impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- **Colorscheme Utility**: [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)
- **Faster Fuzzy Finding**: [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)

### [tpope](https://github.com/tpope/)'s Great Plugins
- [vim-surround](https://github.com/tpope/vim-surround) helps me quickly change the surrounding brackets / <img src="https://upload.wikimedia.org/wikipedia/commons/9/92/LaTeX_logo.svg" height=17> environment.
- [vim-repeat](https://github.com/tpope/vim-repeat) can repeat series of actions with `.` keystroke.


# TODOs
- [ ] Debug tool: thinking about [Vimspector](https://github.com/puremourning/vimspector) or [nvim-dap](https://github.com/mfussenegger/nvim-dap). 

- [ ] [Vimtex](https://github.com/lervag/vimtex): forward and backward search
