local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<leader>fw', ':Telescope live_grep<CR>')
map('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }, previewer = false, layout_config={ width=0.5, height=0.5} })<cr>")

