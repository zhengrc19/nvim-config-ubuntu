local options = {
-- encoding
    fileencoding = "utf-8",
    fileencodings = { "ucs-bom", "utf-8", "cp936", "gb18030", "big5", "euc-jp", "euc-kr", "latin1" },
-- everything regarding tabs and indents
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    smartindent = true,
    breakindent = true,
    breakindentopt = "shift:2",
-- searching
    hlsearch = true,
    ignorecase = true,
    smartcase = true,
-- linewidth
    colorcolumn = "80",
    cursorline = true,
    wrap = false,
-- system clipboard
    clipboard = "unnamedplus",
-- mouse support
    mouse = "a",
-- line numbers
    nu = true,
    relativenumber = true,
    numberwidth = 2,
    signcolumn = "yes",
-- extra files
    backup = false,
    writebackup = false,
    -- undofile = true,
    swapfile = false,
-- scrolloff
    scrolloff = 8,
    sidescrolloff = 8,
-- timeouts
    timeoutlen = 500,
    updatetime = 300,
-- windows
    splitbelow = true,
    splitright = true,
-- status and tab bar
    pumheight = 10,
    -- showmode = false,
    showtabline = 2,
    -- cmdheight = 2,
    completeopt = { "menuone", "noselect" },
    conceallevel = 0,
}

vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
        ["+"] = "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf"
    },
    paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf"
    },
    cache_enable = 0,
}


vim.cmd "set whichwrap+=<,>,[,],h,l"    -- go to next line when at end
-- vim.cmd "set iskeyword-=_"              -- let _ be a word separator
vim.cmd "set iskeyword-=:"              -- let : be a word separator

vim.cmd [[
aug FixTypos
    :command! WQ wq
    :command! Wq wq
    :command! QA qa
    :command! Qa qa
    :command! W w
    :command! Q q
aug end
]]

for k, v in pairs(options) do
    vim.opt[k] = v
end
