return {
    "iamcco/markdown-preview.nvim",
    config = function()
    	vim.fn["mkdp#util#install"]()
	end,
	init = function()
		vim.g.mkdp_auto_start = 1
    	vim.g.mkdp_filetypes = { "markdown" }
  	end,
}
