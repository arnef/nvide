return {
  'navarasu/onedark.nvim',
  config = function()
    local onedark = require('onedark')
    onedark.setup({
      style = 'warm'
    })
    onedark.load()

    local colors = require 'onedark.colors'

    -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg=colors.bg3 })
    vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = colors.bg1 })
    vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = colors.bg1, bg = colors.bg1 })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.bg2, bg = colors.bg2 })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = colors.bg2 })
    vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = colors.bg_d })
    vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = colors.bg_d, bg = colors.bg_d })
  end
}
