local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<leader>ff', ':Telescope find_files<CR>')
