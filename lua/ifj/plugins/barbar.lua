vim.g.barbar_auto_setup = false -- disable auto-setup

require("barbar").setup({
	-- Set the filetypes which barbar will offset itself for
	sidebar_filetypes = {
		-- Use the default values: {event = 'BufWinLeave', text = nil}
		NvimTree = true,
		-- Or, specify the text used for the offset:
		undotree = { text = "undotree" },
		-- Or, specify the event which the sidebar executes when leaving:
		["neo-tree"] = { event = "BufWipeout" },
		-- Or, specify both
		Outline = { event = "BufWinLeave", text = "symbols-outline" },
	},
})
