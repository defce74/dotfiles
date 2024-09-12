-- ~/.config/nvim/lua/plugins/tokyonight.lua
----------------------------------------------
return {
	"folke/tokyonight.nvim", name = "tokyonight", priority = 1000,

	config = function()
		require("tokyonight").setup({
			style = "moon", -- night, storm, day, moon
			transparent = true,
			styles = {sidebars = "transparent", floats = "transparent",},
			dim_inactive = { enabled = true, },
		})

		-- vim.cmd.colorscheme "tokyonight"
	end,
}

