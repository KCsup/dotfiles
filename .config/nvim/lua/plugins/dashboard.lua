return {
    { 'glepnir/dashboard-nvim',
	event = 'VimEnter',
	config = function()
	    require('dashboard').setup {
		theme = 'hyper', --  theme is doom and hyper default is hyper
		shortcut_type='letter',   --  shorcut type 'letter' or 'number'
		config = {
		    week_header = {
			enable=true
		    },
		},    --  config used for theme
	    }
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'} }
    }
}
