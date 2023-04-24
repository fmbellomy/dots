local M = {}
function M.setup(plugins)
	table.insert(plugins,
	{
		"neovim/nvim-lspconfig",
		name = "nvim-lspconfig",
		config = function()
			local nvim_lsp = require("lspconfig")
			local servers = {"clangd", "rust_analyzer", "jdtls", "lua_ls", "astro", "cssls", "tsserver", "tailwindcss", "jsonls"}
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			for _, lsp in ipairs(servers) do
 				nvim_lsp[lsp].setup {
    				capabilities = capabilities,
  				}
			end
		end,
		dependencies = {"hrsh7th/cmp-nvim-lsp"},

		lazy = false,
		priority = 98
	})
end
return M

