-- ~/.config/nvim/lua/plugins/lsp-config.lua
----------------------------------------------
return {
	{
		"williamboman/mason.nvim", -- installs and manages language servers

		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim", -- ensures language servers are installed

		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", -- lua
					"clangd", -- cpp
					"pylsp", -- python
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig", -- establishes comms between nvim and language server

		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({capabilities = capabilities}) -- lua

			lspconfig.pylsp.setup({
				settings = {
					pylsp = {
						exclude = { "**/SConstruct", },
						plugins = {
							pycodestyle = { enabled = true, exclude = '**/SConstruct', },
      					},
    				},
  				},
				capabilities = capabilities,
			}) -- python

			lspconfig.clangd.setup({capabilities = capabilities}) -- cpp

      		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
