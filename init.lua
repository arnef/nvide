local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('core/options')
require('core/keymaps')

require("lazy").setup({
  require "plugins/tokyonight",
  require "plugins/nvimtree", 
  require "plugins/mason", 
  require "plugins/cmp",
  require 'plugins/treesitter',
  require 'plugins/telescope',
})
