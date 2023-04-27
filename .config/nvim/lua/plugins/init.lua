return {
--    {
--	"morhetz/gruvbox",
--	priority = 1000,
--	config = function()
--	    vim.cmd.colorscheme("gruvbox")
--	end
--    },
    { "sainnhe/gruvbox-material",
	config = function()
	    vim.cmd.set("background=dark")
	    vim.cmd.let("g:gruvbox_material_better_performance = 1")
	    vim.cmd.colorscheme("gruvbox-material")
	end
    },
    { "nvim-lualine/lualine.nvim", config = true },
    { "nvim-tree/nvim-tree.lua",
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
    { "nvim-tree/nvim-web-devicons" },

    { "windwp/nvim-autopairs", config = true },

    { "nvim-treesitter/nvim-treesitter",
	config = function()
	    local tree_config = require('nvim-treesitter.configs')
	    tree_config.setup {
		ensure_installed = { "python", "rust", "typescript", "lua" },
		sync_install = false,
		auto_install = true,
		highlight = {
		    enable = true,
		    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		    -- Using this option may slow down your editor, and you may see some duplicate highlights.
		    -- Instead of true it can also be a list of languages
		    additional_vim_regex_highlighting = false,
		},
	    }
	end
    },

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

