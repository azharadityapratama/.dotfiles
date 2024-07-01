return {
  "quarto-dev/quarto-nvim",
  dependencies = {
    {
      "jmbuhr/otter.nvim",
      dependencies = {
        { "neovim/nvim-lspconfig" },
      },
      opts = {
        buffers = {
          set_filetype = true,
        },
        handle_leading_whitespace = true,
      },
    },
  },
  opts = {
    lspFeatures = {
      languages = { "r", "python", "julia", "bash", "lua", "html", "dot", "javascript", "typescript", "ojs" },
    },
  },
  config = function()
    local quarto = require("quarto")

    quarto.setup()

    vim.keymap.set("n", "<leader>qp", quarto.quartoPreview, { silent = true })
    vim.keymap.set("n", "<leader>qcp", quarto.quartoClosePreview, { silent = true })
    vim.keymap.set("n", "<leader>qop", "o```{python}<CR>```<esc>O")
    vim.keymap.set("n", "<leader>qor", "o```{r}<CR>```<esc>O")
  end,
}
