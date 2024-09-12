-- ~/.config/nvim/lua/treesitter.lua
----------------------------------------------
 return {
	"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",

	config = function() -- treesitter: syntax highlighting
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			auto_install = true, -- install missing language parsers
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}

