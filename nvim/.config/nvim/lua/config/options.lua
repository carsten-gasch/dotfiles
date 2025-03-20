vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.breakindent = true

vim.opt.mouse='a'

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.background = "light"
vim.opt.signcolumn = 'yes'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.opt.showmode = false
vim.opt.cmdheight = 0

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.confirm = true
vim.opt.scrolloff = 10

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', space = "·", nbsp = '␣', eol = "↲" }

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.inccommand = 'split'

vim.opt.swapfile = false

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
