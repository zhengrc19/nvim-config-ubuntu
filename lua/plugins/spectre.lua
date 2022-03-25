local status_ok, spectre = pcall(require, "spectre")
if not status_ok then
  return
end

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
keymap("n", "<leader>S", "<cmd>lua require('spectre').open()<CR>", opts)

-- search current word
keymap("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", opts)
keymap("v", "<leader>s", "<cmd>lua require('spectre').open_visual()<CR>", opts)

-- "  search in current file
keymap("n", "<leader>sp", "<cmd>lua require('spectre').open()<CR>", opts)
-- " run command :Spectre
