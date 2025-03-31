vim.g.mapleader = " "

vim.opt.title = true

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set clipboard=unnamedplus")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd("set linebreak")
vim.cmd("set smartindent")

vim.opt.list = true
vim.opt.listchars:append({
	tab = "▏→",
	trail = "·",
	precedes = "«",
	extends = "»",
	eol = "⏎",
})

vim.opt.showmode = false

-- open floating diagnostics panel
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostics in Float" })

-- map jj and jk to <esc> in insert mode
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("i", "jk", "<ESC>", { silent = true })

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- disable hightlights on <esc>
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")

vim.opt.winborder = "rounded"
