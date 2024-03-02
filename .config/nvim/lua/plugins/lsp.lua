return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependecies = {
			"williamboman/mason.nvim",
		},
		config = function()
			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"html",
					"cssls",
					"tsserver",
					"eslint",
					"clangd",
					"pyright",
					"rust_analyzer",
					"taplo",
					"emmet_language_server",
					"jdtls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependecies = { "hrsh7th/cmp-nvim-lsp" },
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.eslint.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.taplo.setup({ capabilities = capabilities })
			lspconfig.emmet_language_server.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({
        capabilities = capabilities,
        root_dir = lspconfig.util.root_pattern("pom.xml", "build.gradle", ".git")
          or vim.fn.getcwd(),
      })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
