return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown' },

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },

  opts = {},

  config = function(_, opts)
    require('render-markdown').setup(opts)

    vim.keymap.set('n', '<leader>mr', function()
      vim.b.render_markdown_enabled =
        not vim.b.render_markdown_enabled

      if vim.b.render_markdown_enabled then
        vim.cmd('RenderMarkdown enable')
      else
        vim.cmd('RenderMarkdown disable')
      end
    end, { desc = 'Toggle Render Markdown (buffer)' })
  end,
}

