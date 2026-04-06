vim.g.mapleader = " "

-- vim.keymap.set("n", "<C-e>", vim.cmd.Ex)
vim.keymap.set("n", "<C-e>", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>r', '<C-r>', { desc = 'Redo' })

vim.keymap.set("n", "<leader>z", function()
    vim.opt.wrap = not vim.opt.wrap:get()
end)
