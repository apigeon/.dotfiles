return {
  "williamboman/mason-lspconfig.nvim", 
  dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
  opts = {
    ensured_installed = { "ansiblels", "bashls", "cmake", "dockerls", "jsonls", "jsonnet_ls", "lua_ls", "clangd","pyright" },
  },
}

