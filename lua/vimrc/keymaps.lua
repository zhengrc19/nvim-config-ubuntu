local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-------------------------------------------------------------------------


-- Normal --
-- Better window navigation
keymap("n", "sh", "<C-w>h", opts)
keymap("n", "sj", "<C-w>j", opts)
keymap("n", "sk", "<C-w>k", opts)
keymap("n", "sl", "<C-w>l", opts)

-- Split window
keymap("n", "ss", ":split<CR>", opts)
keymap("n", "sv", ":vsplit<CR>", opts)

-- Move cursor in what you see
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- Quicker command
keymap("n", ";", ":", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +1<CR>", opts)
keymap("n", "<C-Down>", ":resize -1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -1<CR>", opts)

-- Home and End
keymap("n", "L", "$", opts)
keymap("n", "H", "^", opts)

-- Navigate between Buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
keymap("n", "`", ":bprevious<CR>", opts)
keymap("n", "<C-l>", "<C-i>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Switch between current and last buffer (Similar to Alt+Tab)
keymap("n", "<leader>t", "<C-^>", opts)

-- Copy file path to clipboard
keymap("n", "cp", [[:let @+ = expand("%:p")<CR>]], opts)

-- Add or decrease 1
keymap("n", "+", "<C-a>", opts)
keymap("n", "_", "<C-x>", opts)

-- Quick scorlling
keymap("n", "<C-j>", "2<C-e>", opts)
keymap("n", "<C-k>", "2<C-y>", opts)

-- Close buffer
keymap("n", "<leader>w", "<cmd>Bdelete<CR>", opts)
keymap("n", "<C-q>", "<cmd>Bclose select<CR>", opts)

-- Select all
keymap("n", "<leader>sa", "gg<S-v>G", opts)

-- Add new line without entering insert mode
keymap("n", "m", "<cmd>put =''<CR>", opts)
keymap("n", "M", "<cmd>put! =''<CR>", opts)

-- Delete without yanking
keymap("n", "<leader>d", '"_d', opts)

-------------------------------------------------------------------------


-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Move text up and down
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Move cursor in insert mode
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-j>", "<Down>", opts)

-- Home and End
keymap("i", "LL", "<Esc>$a", opts)
keymap("i", "HH", "<Esc>^i", opts)


-------------------------------------------------------------------------


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m .-2<CR>gv=gv", opts)

-- delete without yanking
keymap("v", "<leader>d", '"_d', opts)
keymap("v", "p", '"_dP', opts)

-- Select all
keymap("v", "<leader>sa", "<Esc>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv=gv", opts)


-------------------------------------------------------------------------


-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-------------------------------------------------------------------------
