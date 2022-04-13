-- autocommands
--- This function is taken from https://github.com/norcalli/nvim_utils
local function nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        vim.api.nvim_command('augroup '..group_name)
        vim.api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            vim.api.nvim_command(command)
        end
        vim.api.nvim_command('augroup END')
    end
end

local autocmds = {
    reload_vimrc = {
        -- Reload vim config automatically
        {"BufWritePost",[[~/.config/nvim/{*.vim,*.yaml,vimrc,*.lua} nested source $MYVIMRC | redraw]]};
    };
    -- change_header = {
        -- {"BufWritePre", "*", "lua changeheader()"}
    -- };
    -- packer = {
        -- { "BufWritePost", "plugins.lua", "PackerCompile" };
    -- };
    terminal_job = {
        { "TermOpen", "*", [[tnoremap <buffer> <Esc> <c-\><c-n>]] };
        { "TermOpen", "*", "startinsert" };
        { "TermOpen", "*", "setlocal listchars= nonumber norelativenumber" };
    };
    restore_cursor = {
        { 'BufRead', '*', [[call setpos(".", getpos("'\""))]] };
    };
    no_comment_on_new_line = {
        { "FileType", "*", "set formatoptions-=cro" }
    };
    -- save_shada = {
        -- {"VimLeave", "*", "wshada!"};
    -- };
    resize_windows_proportionally = {
        { "VimResized", "*", ":wincmd =" };
    };
    toggle_search_highlighting = {
        { "InsertEnter", "*", "setlocal nohlsearch" };
    };
    lua_highlight = {
        { "TextYankPost", "*", [[silent! lua vim.highlight.on_yank() {higroup="IncSearch", timeout=5000}]] };
    };
    no_comment_next_line = {
        { "BufEnter", "*", "set fo-=c fo-=r fo-=o" };
    };
    -- ansi_esc_log = {
        -- { "BufEnter", "*.log", ":AnsiEsc" };
    -- };
    auto_tex_wrap = {
        { "FileType", "tex",  [[set wrap]] };
    };
    -- auto_omni_completion = {
    --     { "FileType", "tex",  [[lua require('cmp').setup.buffer { sources = { { name = 'omni' } }  }]] };
    -- };
}

nvim_create_augroups(autocmds)
