require("mason").setup()

require('mason-tool-installer').setup {
  ensure_installed = {
    'graphql-language-service-cli',
    'json-lsp',
    'lua-language-server',
    'rust-analyzer',
    'stylua',
    'elixir-ls'
  },
  auto_update = true,
}
