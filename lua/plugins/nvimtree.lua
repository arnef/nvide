return {
  "nvim-tree/nvim-tree.lua",
	dependencies = {
    "nvim-tree/nvim-web-devicons",
	},
	config = function()
    require("nvim-tree").setup({
      view = {
        width = 25,
        hide_root_folder = true,
        side = "left",
      }
    })
    vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = function(data)
      
      local directory = vim.fn.isdirectory(data.file) == 1

      local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

      if no_name or directory then
        vim.cmd.enew()
if directory then
  -- wipe the directory buffer
  vim.cmd.bw(data.buf)

  -- change to the directory
  vim.cmd.cd(data.file)
end
        require("nvim-tree.api").tree.open()
      end
    end })
  end
}
