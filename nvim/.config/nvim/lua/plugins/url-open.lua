return {
	"sontungexpt/url-open",
	event = "VeryLazy",
	cmd = "URLOpenUnderCursor",
	config = function()
		local status_ok, url_open = pcall(require, "url-open")
		if not status_ok then
			return
		end
		url_open.setup({
			open_only_when_cursor_on_url = true,
		})
	end,
	vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>", { desc = "Open URL under the cursor" }),
}
