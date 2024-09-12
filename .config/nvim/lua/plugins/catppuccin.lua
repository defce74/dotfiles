-- ~/.config/nvim/lua/plugins/catppuccin.lua
----------------------------------------------
return {
	"catppuccin/nvim", name = "catppuccin", priority = 1000,

	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			dim_inactive = { enabled = true, },
		})

		vim.cmd.colorscheme "catppuccin"
	end,
}

