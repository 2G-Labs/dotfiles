return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			open_mapping = [[<c-\>]],
			direction = "horizontal",
			winbar = {
				enabled = true,
				name_formatter = function(term)
					-- Extract the parts using pattern matching
					local cmd, term_num = term.name:match("^(.-);#toggleterm#(%d+)$")

					-- Format the result as "term_num cmd"
					local formatted_str = term_num .. ":" .. cmd
					return formatted_str
				end,
			},
		},
	},
}
