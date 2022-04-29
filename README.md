# Neovim Config (Ubuntu)
This is my personal Neovim config for Ubuntu systems. As a CS undergrad at Tsinghua currently the config is built around course projects, including Python, C/C++, and some Assembly code.

The config is purely written in Lua, as well as most plugins used. However I could not resist the quality of tpope's and other great Vimscript plugins, so I'm not strictly sticking to Lua for the plugin's language.

| Attribute   | Current Value    |
|--------------- | --------------- |
| Version   | Neovim 0.7.0   |
| Linux System   | Ubuntu 20.04 LTS on Windows 11 WSL   |


# Screenshots


# Features


# List of Plugins and Usages
### Basic Features
- **File Tree**: nvim-tree.lua
- **Status Line**: lualine.lua
- **Buffer Line (Tab Bar)**: bufferline.lua

### Better Editor
- **Better Syntax Highlighting**: nvim-treesitter
- **Paired Brackets**: nvim-autopairs
- **Rainbow-Colored Brackets**: nvim-ts-rainbow
- **Indentation**
  - Auto determine indent width of file: intent-o-matic
  - Indentation guides: indent-blankline.nvim

### IDE Features
- **Start Page and Project Management**: vim-startify
- **Git Sign Column**: gitsigns.nvim
- **Project-scope Find and Replace**: nvim-spectre
- **Syntax-specific Commenting**: Comment.nvim
- **Integrated Terminal**: toggleterm.nvim
- **Language Server Protocol (LSP)**:
  - nvim-lspconfig: to enable LSP.
  - nvim-lsp-installer: to install LSP servers.
- **Autocompletion**:
  - nvim-cmp: basic completion plugin. Supported completion sources:
    - cmp-nvim-lsp: completion from LSP server.
    - cmp-buffer: completion from open buffers.
    - cmp-path: completion from path of file system.
    - cmp-calc: calculator.
    - cmp-omni: omni-completion (for Vimtex).
    - cmp-cmdline: command line completion.
    - cmp-luasnip: snippet completion.
    - cmp-nvim-lsp-signature-help: parameter types when calling a function.
- **Snippets**:
  - LuaSnip: snippet engine
  - friendly-snippets: snippet bank

### Language Specific
- **Markdown**: markdown-preview.nvim
- **$\LaTeX{}$**: vimtex
- **RISC-V Assembly**: riscv.vim

### Colorscheme: onebuddy

### Useful Features
- **Show Color of Hex Value as Highlight**: nvim-colorizer
- **Don't Change Window Layout When Closing Buffer**: vim-bbye
- **Choose Which Buffers to Close**: close-buffers.vim

### Helper Packages
- **Package Manager**: packer.nvim
- **Icons**: nvim-web-devicons
- **Lua Function Library**: plenary.nvim
- **Fix LSP Doc Highlight**: FixCursorHold.nvim
- **Speeding Up**: impatient.nvim
- **Colorscheme Utility**: colorbuddy.vim

### tpope's Great Plugins
- vim-surround helps me quickly change the surrounding brackets / $\LaTeX{}$ environment.
- vim-repeat can repeat series of actions with `.` keystroke.


# TODOs
[ ] Debug tool: thinking about Vimspector or nvim-dap. 

[ ] Vimtex: forward and backward search
