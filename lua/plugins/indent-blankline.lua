return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				enable = true,
				-- style = {
				-- 	{ fg = "#806d9c" },
				-- 	{ fg = "#c21f30" },
				-- },
				style = "#7dcfff",
				chars = {
					horizontal_line = "─",
					vertical_line = "│",
					left_top = "╭",
					left_bottom = "╰",
					right_arrow = "─",
					-- right_arrow = ">",
				},
				-- chars = {
				-- 	horizontal_line = "─",
				-- 	vertical_line = "│",
				-- 	left_top = "┌",
				-- 	left_bottom = "└",
				-- 	right_arrow = "─",
				-- },
				duration = 200,
		    	delay = 100,
			},
			indent = {
				enable = true,
				chars = {
					"│",
					-- "¦",
					-- "┆",
					-- "┊",
				},
				-- chars = {
				-- 	"│",
				-- },
				-- style = {
				-- 	"#FF0000",
				-- 	"#FF7F00",
				-- 	"#FFFF00",
				-- 	"#00FF00",
				-- 	"#00FFFF",
				-- 	"#0000FF",
				-- 	"#8B00FF",
				-- }
			},
			line_num = {
				enable = true,
				style = "#7dcfff",
			},
			blank = {
				enable = false,
			}
		})
	end
}
