return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			-- add cmake and cpp
			vim.list_extend(opts.ensure_installed, {
				"cmake",
				"cpp",
			})
		end,
	},
}
