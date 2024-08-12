local components = require("neo-tree.sources.common.components")

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		opts = {
			default_component_configs = {
				git_status = {
					symbols = {
						untracked = "",
						unstaged = "",
					},
				},
			},
			filesystem = {
				components = {
					name = function(config, node, state)
						local name = components.name(config, node, state)
						if node:get_depth() == 1 then
							name.text = vim.fs.basename(vim.fn.getcwd() or "")
							if name.text == "" then
								name.text = "/"
							end
						end
						return name
					end,
				},

				filtered_items = {
					visible = true, -- when true, they will just be displayed differently than normal items
					hide_dotfiles = true,
					hide_gitignored = true,
					hide_hidden = true, -- only works on Windows for hidden files/directories
					hide_by_name = {},
					hide_by_pattern = {
						--"*.meta",
						--"*/src/*/tsconfig.json",
					},
					always_show = { -- remains visible even if other settings would normally hide it
						--".gitignored",
					},
					never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
						".DS_Store",
						"thumbs.db",
						".git",
						"node_modules",
					},
					never_show_by_pattern = { -- uses glob style patterns
						--".null-ls_*",
					},
				},
			},
		},
	},
}
