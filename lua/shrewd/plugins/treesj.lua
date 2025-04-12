return {
  'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>ss' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require('treesj').setup({
            langs = {
                c_sharp = require('treesj.langs.java'),
            }
        })
  end,
}
