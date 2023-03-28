return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'fannheyward/telescope-coc.nvim',
  },
  cmd = "Telescope",
  config = function ()
    local telescope = require 'telescope'
    local options = {
      defaults = {
      prompt_prefix = "   ",
      layout_config = {
        horizontal = {
          prompt_position = "top",
        },
      },
      file_ignore_patterns = { "node_modules" },
      mappings = {
        n = { ["q"] = require("telescope.actions").close },
      },
    },
  }
  telescope.setup(options)
  telescope.load_extension('coc')
  end
}
