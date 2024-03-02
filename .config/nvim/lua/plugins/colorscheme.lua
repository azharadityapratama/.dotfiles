return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        harpoon = true,
        indent_blankline = {
          enabled = true,
          scope_color = "",
          colored_indent_levels = false,
        },
        mason = true,
        native_lsp = { enabled = true },
        nvimtree = true,
        telescope = true,
        treesitter = true,
      },
    })

    vim.cmd.colorscheme("catppuccin-macchiato")
  end,
}
