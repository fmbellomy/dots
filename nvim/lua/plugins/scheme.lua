local M = {}
function M.setup(plugins)
	table.insert(plugins, {
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					neotree = true,
					mason = true,
					which_key = true,
					native_lsp = {enabled = true}
				},
			})
			vim.cmd([[colorscheme catppuccin]])
		end,
	})
end

return M
