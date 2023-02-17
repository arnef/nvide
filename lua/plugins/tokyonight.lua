return {
  "folke/tokyonight.nvim",
  lazy = false,
  config = function()
	  local tokyonight = require "tokyonight"
    tokyonight.setup { style = "storm" }
    tokyonight.load()
  end
}
