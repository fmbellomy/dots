local M = {}
function M.setup(plugins)
	table.insert(plugins, {
		"akinsho/toggleterm.nvim",
		config = true,
	})
	return plugins
end

return M
