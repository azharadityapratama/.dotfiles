-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Case-insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Clear search highlight on <Esc>
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Set signcolumn on
vim.opt.signcolumn = "yes"

-- Change how splits should be opened
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Preview substitutions live
vim.opt.inccommand = "split"

-- Show cursorline
vim.opt.cursorline = true

-- Minimum number of screen lines to keep above and below cursor
vim.opt.scrolloff = 8

-- Enable breakindent
vim.opt.breakindent = true

-- Set indent size and smartindent
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

-- Default 2 spaces tab
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- Show line length marker
vim.opt.colorcolumn = "80"

-- Terminal color support
vim.opt.termguicolors = true
