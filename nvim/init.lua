local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- OG VIM SETTINGS
-- TERMINAL
vim.o.splitbelow = true
vim.o.termwinsize = "15x0"
-- PLUGINS
local plugins = require("plugins").setup()
require("lazy").setup(plugins)
require("keybinds").setup()

--switch between panes with Ctrl + movement keys
vim.keymap.set({ "n", "t" }, "<esc>", [[<C-\><C-n>]])
vim.keymap.set({ "t" }, "jk", [[<C-\><C-n>]])
vim.keymap.set({ "n", "t" }, "<C-h>", [[<Cmd>wincmd h<CR>]])
vim.keymap.set({ "n", "t" }, "<C-j>", [[<Cmd>wincmd j<CR>]])
vim.keymap.set({ "n", "t" }, "<C-k>", [[<Cmd>wincmd k<CR>]])
vim.keymap.set({ "n", "t" }, "<C-l>", [[<Cmd>wincmd l<CR>]])
vim.keymap.set({ "t" }, "<C-w>", [[<C-\><C-n><C-w>]])
-- use system clipboard for yank buffer
vim.keymap.set({"n", "v"},"<leader>y","\"+y")
vim.keymap.set("n","<leader>Y","\"+Y")
-- delete to void register instead of overwriting what's currently held in register
vim.keymap.set({"n", "v"},"<leader>d", "\"_d")
-- move highlighted block up or down, account for changes in nesting/indentation of new placement
vim.keymap.set("v", "J", ":m'>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m'<-2<CR>gv=gv")
-- line number settings
vim.opt.nu = true
vim.opt.relativenumber = true
-- 4 width tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- smartindent xd
vim.opt.smartindent = true
-- search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true
--misc. idk what to call this stuff honestly
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")


