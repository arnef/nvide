local opt = vim.opt
local api = vim.api

-- set up fold
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

local autocmd = api.nvim_create_autocmd
local augroup = api.nvim_create_augroup

-- unfold all on start
augroup('UnfoldOnStart', { clear = true })
autocmd('BufEnter', {
  group = 'UnfoldOnStart',
  pattern = '*',
  command = "normal zR"
})
