-- Clipboard
vim.keymap.set("n", "<leader>Y", '"+yg_', { silent = true })
vim.keymap.set("n", "<leader>y", '"+y', { silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { silent = true })
vim.keymap.set("n", "<leader>p", '"+p', { silent = true })
vim.keymap.set("n", "<leader>P", '"+P', { silent = true })
vim.keymap.set("v", "<leader>p", '"+p', { silent = true })
vim.keymap.set("v", "<leader>P", '"+P', { silent = true })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ft", "<cmd>Telescope<CR>", {})
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>fl", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find, {})

-- Diagnostic
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Git
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})

-- NvimTree
vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>")
vim.keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>")

