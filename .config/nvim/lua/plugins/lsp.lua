return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

    local servers = {
      lua_ls = {},
      html = {},
      cssls = {},
      tsserver = {},
      eslint = {},
      clangd = {},
      pyright = {},
      rust_analyzer = {},
      taplo = {},
      emmet_language_server = {},
      jdtls = {},
    }

    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = vim.tbl_keys(servers or {}),
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end
      },
    })
  end,
}
