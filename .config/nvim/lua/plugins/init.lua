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

    -- Completion
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp", config = true },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },

    { "simrat39/rust-tools.nvim", config = true}
}

