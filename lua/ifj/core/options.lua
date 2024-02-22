local opt = vim.opt -- for conciseness

--line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indetation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- apperance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split window
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.termguicolors = true

-- vim.cmd("highlight Cursor guifg=NONE guibg=red")
vim.cmd([[
  hi! VM_Mono guibg=Orange60 guifg=Black gui=NONE
]])
