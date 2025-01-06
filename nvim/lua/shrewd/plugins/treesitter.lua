return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.install').compilers = { "zig" }
    require('nvim-treesitter.install').prefer_git = false
    require('nvim-treesitter.configs').setup({
      ensure_installed = {},
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end,
}