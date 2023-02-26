local M = {}
function M.setup(plugins)
	table.insert(plugins, {
		"nvim-treesitter/nvim-treesitter",
		name = "treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				highlight = {
					enable = true,
				},
			})
		end,
	})
end

return M
