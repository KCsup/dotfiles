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

    { "nvim-treesitter/nvim-treesitter" },

    { 'nvim-telescope/telescope.nvim',
	tag = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
	    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end
    },

}

