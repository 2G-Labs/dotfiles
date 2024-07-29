-- TODO: Make the notification look like card
vim.cmd([[
highlight link NotifyERRORBorder Normal
highlight link NotifyWARNBorder Normal
highlight link NotifyINFOBorder Normal
highlight link NotifyDEBUGBorder Normal
highlight link NotifyTRACEBorder Normal
highlight NotifyERRORIcon guifg=#F70067
highlight NotifyWARNIcon guifg=#F79000
highlight NotifyINFOIcon guifg=#A9FF68
highlight NotifyDEBUGIcon guifg=#8B8B8B
highlight NotifyTRACEIcon guifg=#D484FF
highlight NotifyERRORTitle  guifg=#F70067
highlight NotifyWARNTitle guifg=#F79000
highlight NotifyINFOTitle guifg=#A9FF68
highlight NotifyDEBUGTitle  guifg=#8B8B8B
highlight NotifyTRACETitle  guifg=#D484FF
highlight link NotifyERRORBody Normal
highlight link NotifyWARNBody Normal
highlight link NotifyINFOBody Normal
highlight link NotifyDEBUGBody Normal
highlight link NotifyTRACEBody Normal
]])

return {
	{
		"nvim-notify",
		opts = function(_, opts)
			opts.render = "wrapped-compact"
			opts.stages = "slide"
			opts.max_width = 35
		end,
	},
}
