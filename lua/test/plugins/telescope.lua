return {
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		local telescope = require('telescope')
		local actions = require ('telescope.actions')
		local builtin = require ('telescope.builtin')

		telescope.setup({
			defaults = {
				file_ignore_patterns = { 'node_modules', '.git/' },
			},
		})

		pcall(telescope.load_extension, 'fzf')

		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>ps', builtin.grep_string, { desc = 'Telescope grep string' })
	end,
}
