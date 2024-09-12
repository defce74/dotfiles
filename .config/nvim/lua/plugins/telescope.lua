-- ~/.config/nvim/lua/plugins/telescope.lua
-- telescope: find and grep files
----------------------------------------------
 return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },

		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<leader>fd', builtin.find_files, {}) -- ctrl-p find files
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- <space>fg ripgrep tool
		end,
	},

	{
		'nvim-telescope/telescope-ui-select.nvim',

		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = { require("telescope.themes").get_dropdown {} }
				}
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
