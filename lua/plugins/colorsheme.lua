return{
	-- Everforest
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      vim.g.everforest_background = "hard"
      vim.g.everforest_better_performance = 1
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_transparent_background = 0
      vim.cmd.colorscheme("everforest")
    end,
	-- Tokyonight
	-- "folke/tokyonight.nvim",
	-- lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- priority = 1000, -- make sure to load this before all the other start plugins
	-- config = function()
		-- 	-- load the colorscheme here
		-- 	vim.cmd([[colorscheme tokyonight]])
		-- end,
	}
