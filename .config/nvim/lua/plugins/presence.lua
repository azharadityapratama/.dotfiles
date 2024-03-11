return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      neovim_image_text = "How do I exit it?",
    })
  end
}
