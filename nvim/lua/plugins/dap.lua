local M = {}
function M.setup(plugins)
	table.insert(plugins,
	{
		"mfussenegger/nvim-dap",
		name = "nvim-dap",
	})
end
return M
