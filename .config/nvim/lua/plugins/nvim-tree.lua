return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      renderer = {
        group_empty = true,
      },
      sort = {
        sorter = "case_sensitive",
      },
    })

    vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
    vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFindFileToggle<CR>")
    vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>")
    vim.keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>")
  end,
}
