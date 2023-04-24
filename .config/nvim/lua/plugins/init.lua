return {
    {
	"morhetz/gruvbox",
	priority = 1000,
	config = function()
	    vim.cmd.colorscheme("gruvbox")
	end
    },
    { "nvim-lualine/lualine.nvim", config = true },
    { 
	"nvim-tree/nvim-tree.lua",
	keys = {
	    { "<F3>", "<cmd>NvimTreeToggle<CR>" }
	},
	config = true

	-- Floating window config
--	config = function()
--	    require("nvim-tree").setup({
--		view = {
--		    float = {
--			enable = true
--		    }
--		}
--	    })
--	end
    },
    "nvim-tree/nvim-web-devicons",

    { "windwp/nvim-autopairs", config = true },

}

