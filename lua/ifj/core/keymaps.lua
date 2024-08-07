vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

vim.opt.swapfile = false -- disable swap files
local opts = { noremap = true, silent = true }

---------------------
-- General Keymaps
---------------------
--
keymap.set({ "n" }, "º", ":call vm#commands#add_cursor_up(0, v:count1)<cr>", { noremap = true, silent = true })

keymap.set({ "n" }, "¬", ":call vm#commands#add_cursor_down(0, v:count1)<cr>", { noremap = true, silent = true })

-- Jump start/ end of line
keymap.set({ "n", "v" }, "<C-l>", "$")
keymap.set({ "n", "v" }, "<C-h>", "0")

-- jump multiple liness
keymap.set("n", "<C-J>", "7j", opts)
keymap.set("n", "<C-K>", "7k", opts)

keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-h>", "<Left>")

-- Remove highlight after search
keymap.set("n", "<esc>", ":noh<cr>", opts)

-- Move selected line / block of text in visual mode

keymap.set("x", "K", ":move '<-2<CR>gv-gv")
keymap.set("x", "J", ":move '>+1<CR>gv-gv")

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- i ncrement
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>fe", ":NvimTreeFocus<CR>")
keymap.set("n", "<leader>f", ":NvimTreeFindFile<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
