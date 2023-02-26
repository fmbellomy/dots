local M = {}
function M.setup(plugins)
	table.insert(plugins, {
		"folke/which-key.nvim",
		name = "which-key",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
			require("which-key").setup({})
		end,
	})
end

return M
