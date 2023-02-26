local M = {}
function M.setup(plugins)
	table.insert(plugins, {
		"nvim-neo-tree/neo-tree.nvim",
		name = "neo-tree",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
			})
		end,
	})
end

return M
