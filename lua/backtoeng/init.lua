local M = {}

function M.setup(opts)
	function M.InputToEng()
		os.execute(opts.toEng)
	end
	vim.keymap.set({ "n", "c", "v", "x", "i" }, "<Esc>", function()
		M.InputToEng()
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, true, true), "n", true)
	end, { noremap = true, silent = true })

	vim.keymap.set({ "c", "v", "x" }, "<CR>", function()
		M.InputToEng()
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<CR>", true, true, true), "n", true)
	end, { noremap = true, silent = true })
end

return M
