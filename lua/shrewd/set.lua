vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

local tabsize = 2

vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)

-- vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = tabsize
vim.opt.softtabstop = tabsize
vim.opt.shiftwidth = tabsize
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 2
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.env.LANG = "en_US.UTF-8"
vim.env.LC_ALL = "en_US.UTF-8"

vim.opt.showmode = false

vim.opt.cmdheight = 0

vim.opt.ignorecase = true

vim.opt.backspace = {"start", "eol", "indent"}

vim.opt.cursorline = true

-- vim.opt.colorcolumn = "80"

-- vim.opt.title = true

-- window split
