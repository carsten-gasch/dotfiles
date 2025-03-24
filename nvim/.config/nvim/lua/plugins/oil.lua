return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		columns = {
			"icon",
			"permissions",
		},
		skip_confirm_for_simple_edits = true,
		view_options = {
			show_hidden = true,
			is_hidden_file = function(name, bufnr)
				local m = name:match("^%.")
				return m ~= nil
			end,
		},
	},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
}
