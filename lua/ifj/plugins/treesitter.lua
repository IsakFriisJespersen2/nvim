-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	sync_install = true,
	highlight = {
		enable = true,
	},

	-- enable indentation
	indent = { enable = true },

	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_colse_on_slash = true,
		-- filetypes = { "html", "xml", "svelte", "tsx", "jsx" },
	},

	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	-- auto install above language parsers
	auto_install = true,
})
