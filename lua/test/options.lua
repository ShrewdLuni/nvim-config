local opt = vim.opt
local o = vim.o
local g = vim.g
local tabsize = 2

opt.guicursor = ""

opt.nu = true
opt.relativenumber = true
opt.cursorline = true

opt.tabstop = tabsize
opt.softtabstop = tabsize
opt.shiftwidth = tabsize
opt.expandtab = true
opt.smartindent = true

opt.updatetime = 50

opt.wrap = false

opt.termguicolors = true -- nvim-highlight-color

opt.clipboard = "unnamedplus" -- sync nvim and clipboard

opt.undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true
opt.undolevels = 10000
opt.undoreload = 10000

opt.swapfile = false
opt.backup = false

opt.cmdheight = 0

opt.ignorecase = true
