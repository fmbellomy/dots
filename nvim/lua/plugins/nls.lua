local M = {}
function M.setup(plugins)
	table.insert(plugins, {
		"jose-elias-alvarez/null-ls.nvim",
		name = "null-ls",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.completion.luasnip,
				},
			})
		end,
	})
end

return M
