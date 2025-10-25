require("nvchad.configs.lspconfig").defaults()

local servers = {
  "basedpyright",
  "ruff",
  "debugpy",
  "robotcode",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

vim.lsp.config("debugpy", {})

vim.lsp.config("robotcode", {})
