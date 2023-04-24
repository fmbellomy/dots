local M = {}
function M.setup()
	local plugins = {}
	local here = 'plugins.'
	require(here .. 'sitter').setup(plugins)
	require(here .. 'pairs').setup(plugins)
	require(here .. 'dap').setup(plugins)
	require(here .. 'term').setup(plugins)
	require(here .. 'tree').setup(plugins)
	require(here .. 'lsp').setup(plugins)
	require(here .. 'ms').setup(plugins)
	require(here .. 'nls').setup(plugins)
	require(here .. 'completions').setup(plugins)
	require(here .. 'norg').setup(plugins)
	require(here .. 'plen').setup(plugins)
	require(here .. 'binds').setup(plugins)
	require(here .. 'scheme').setup(plugins)
	return plugins
end
return M
