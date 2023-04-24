local M = {}
function M.setup(plugins)
	table.insert(plugins, {
		"windwp/nvim-autopairs",
		name = "autopairs",
		config = true,
	})
end

return M
