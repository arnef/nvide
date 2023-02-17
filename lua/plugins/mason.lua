return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()
    local mason_lsp = require("mason-lspconfig")
    mason_lsp.setup({
      ensure_installed = { 'tsserver' },
      automatic_installation = true,
    })
    mason_lsp.setup_handlers {
      function (server_name)
        require("lspconfig")[server_name].setup {}
      end
    }
  end
}
