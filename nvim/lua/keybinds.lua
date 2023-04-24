local M = {}
function M.setup()
	local api = vim.api
	local g = vim.g

	-- Remap leader and local leader to <Space>
	api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
	g.mapleader = " "
	g.maplocalleader = " "

	local opts = {
		mode = "n", -- Normal mode
		prefix = "<leader>",
		buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
		silent = true, -- use `silent` when creating keymaps
		noremap = true, -- use `noremap` when creating keymaps
		nowait = false, -- use `nowait` when creating keymaps
	}

	local general_bindings = {
		["f"] = {
			function()
				vim.lsp.buf.format({ async = true })
			end,
			"format",
		},
		["w"] = {
			"<cmd>w!<cr>",
			"save",
		},
		["q"] = {
			"<cmd>q!<cr>",
			"quit",
		},
		["e"] = {
			"<cmd>Neotree toggle<cr>",
			"toggle file browser",
		},
		["t"] = {
			"<cmd>ToggleTerm<cr>",
			"open terminal",
		},
	}
	local wk = require("which-key")
	wk.register(general_bindings, opts)
end

return M
