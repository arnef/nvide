return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    local bufferline = require 'bufferline'
    bufferline.setup({
      options = {
        separator_style = 'thin',
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function (count, level)
          local icon = level:match('error') and " " or " "
          return ""..icon..count
        end,
        offsets = {
          {
          filetype = 'NvimTree',
          text = function ()
            return string.match(vim.fn.getcwd(), "/([%w%.]+)$")
          end,
          text_align = 'left',
          separator = false,
        }
      }
    }
    })
  end
}
