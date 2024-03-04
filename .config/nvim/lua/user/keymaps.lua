-- Clipboard
vim.keymap.set("n", "<leader>Y", '"+yg_', { silent = true })
vim.keymap.set("n", "<leader>y", '"+y', { silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { silent = true })
vim.keymap.set("n", "<leader>p", '"+p', { silent = true })
vim.keymap.set("n", "<leader>P", '"+P', { silent = true })
vim.keymap.set("v", "<leader>p", '"+p', { silent = true })
vim.keymap.set("v", "<leader>P", '"+P', { silent = true })

-- Diagnostic
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
