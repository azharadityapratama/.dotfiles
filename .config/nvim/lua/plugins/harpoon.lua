return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Harpoon Add to List" })
    vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon Quick Menu"})

    vim.keymap.set("n", "<M-j>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<M-k>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<M-l>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<M-;>", function() harpoon:list():select(4) end)
  end
}
