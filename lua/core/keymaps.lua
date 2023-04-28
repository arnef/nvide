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
map('n', '<leader>cp', ":Telescope coc commands<CR>")


map('i', '<c-space>', 'coc#refresh()', { silent=true, expr=true, })

local cocOpts = { silent = true, expr = true, noremap = true }
map('i', '<TAB>', 'coc#pum#visible() ? coc#pum#next(1) : "<TAB>"', cocOpts)
map('i', '<S-TAB>', 'coc#pum#visible() ? coc#pum#prev(1) : "<S-TAB>"', cocOpts)
map('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', cocOpts)

map("n", "gd", "<Plug>(coc-definition)", {silent = true})
map("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
map("n", "gi", "<Plug>(coc-implementation)", {silent = true})
map("n", "gr", "<Plug>(coc-references)", {silent = true})

