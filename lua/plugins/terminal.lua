return {
	-- Toggle Term
	{
		"akinsho/toggleterm.nvim",
		tag = "v2.*",
		config = function()
			local toggleterm = require("toggleterm")
			toggleterm.setup({
				size = 22,
				open_mapping = [[<c-\>]],
				hide_numbers = true,
				shade_filetypes = {},
				shade_terminals = true,
				shading_factor = 3,
				start_in_insert = true,
				insert_mappings = true, -- whether or not the open mapping applies in insert mode
				terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
				persist_size = true,
				direction = "float",
				close_on_exit = true,
				float_opts = {
					-- The border key is *almost* the same as 'nvim_open_win'
					-- see :h nvim_open_win for details on borders however
					-- the 'curved' border is a custom border type
					-- not natively supported but implemented in this plugin.
					border = "curved", -- 'single' | 'double' | 'shadow' | 'curved'
					-- width = <value>,
					-- height = <value>,
					winblend = 3,
				},
			})
		end,
	},
}
