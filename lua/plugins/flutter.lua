return {
  'akinsho/flutter-tools.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function ()
    require("flutter-tools").setup({
      closing_tags = {
        enabled = true
      },
    })
  end
}
