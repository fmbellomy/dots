local M = {}
function M.setup(plugins)
	table.insert(plugins, {
		"williamboman/mason.nvim",
		name = "mason",
		config = function()
				require("mason").setup({
				ui = {
					width = 0.8,
					height = 0.9
					}
				})
			end,
		lazy = false,
		priority = 100
	})
	table.insert(plugins, {
		"williamboman/mason-lspconfig.nvim",
		name = "mason-lspconfig",
		config = true,
		lazy = false,
		priority = 99
	})
end
return M
