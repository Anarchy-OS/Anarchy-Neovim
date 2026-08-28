return {
	"epwalsh/obsidian.nvim",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"echasnovski/mini.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "docs",
				path = "~/Documents/Docs/",
			},
		},
		disable_frontmatter = true,

		mappings = {
			["<cr>"] = {
				action = function()
					return require("obsidian").util.smart_action()
				end,
				opts = { buffer = true, expr = true },
			},
		},
	},
}
