local M = {}

function M.setup(opts)
	function M.InputToEng()
		os.execute(opts.toEng)
	end
	function M.setKeys()
		vim.keymap.set({ "n", "v", "x", "i" }, "<Esc>", function()
			M.InputToEng()
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>noh<CR><Esc>", true, true, true), "n", false)
		end, { noremap = true, silent = true })

		vim.keymap.set("c", "<Esc>", function()
			M.InputToEng()
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-c>", true, true, true), "n", false)
		end, { noremap = true, silent = true })

		vim.keymap.set({ "c", "v", "x" }, "<CR>", function()
			M.InputToEng()
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<CR>", true, true, true), "n", false)
		end, { noremap = true, silent = true })
	end
end

vim.api.nvim_create_autocmd({ "BufRead" }, {
	callback = function()
		require("backtoeng").setKeys()
	end,
})

return M
