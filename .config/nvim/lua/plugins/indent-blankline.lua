return {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufEnter",
  main = "ibl",
  config = function()
    require("ibl").setup()
  end
}
