return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

		if capabilities.workspace == nil then
      capabilities.workspace = {}
      capabilities.workspace.didChangeWatchedFiles = {}
		end
		capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false

		local servers = {
			lua_ls = {},
			html = {},
			cssls = {},
      tailwindcss = {},
			ts_ls = {},
			eslint = {},
			clangd = {},
			pyright = {},
			rust_analyzer = {},
			taplo = {},
			emmet_language_server = {},
			jdtls = {},
      astro = {},
		}

		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = vim.tbl_keys(servers or {}),
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
					require("lspconfig")[server_name].setup(server)
				end,
			},
		})
	end,
}
