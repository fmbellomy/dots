local M = {}
function M.setup(plugins)
	table.insert(plugins,
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
		lazy = false
	})
end
return M

