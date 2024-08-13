return {
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				clangd = {},
				cmake = {},
			},
			setup = {
				clangd = function(_, opts)
					opts.capabilities.offsetEncoding = { "utf-16" }
				end,
			},
		},
	},
}
