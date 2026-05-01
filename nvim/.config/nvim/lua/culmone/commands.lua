local state = {
	terminal = {
		buf = -1,
		win = -1,
	}
}

vim.api.nvim_create_user_command("ToggleTerminal", function()
	if vim.api.nvim_win_is_valid(state.terminal.win) then
		vim.api.nvim_win_close(state.terminal.win, true)
		state.terminal.win = -1
		return
	end

	vim.cmd("botright 15split")

	if vim.api.nvim_buf_is_valid(state.terminal.buf) then
		vim.cmd("buffer " .. state.terminal.buf)
	else
		vim.cmd("term")
		state.terminal.buf = vim.api.nvim_get_current_buf()
	end

	state.terminal.win = vim.api.nvim_get_current_win()
	vim.cmd("startinsert")
end, {})

