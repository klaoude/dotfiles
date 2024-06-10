local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")

local opts = {
  sources = {
    null_ls.builtins.formatting.clang_format,
  },
  on_attach = function(client, bufnr)
    vim.api.nvim_clear_autocmds({group=augroup,buffer=bufnr})
    vim.api.nvim_create_autocmd("BufWritePre", {
      group=augroup,
      buffer=bufnr,
      callback=function()
        vim.lsp.buf.format({bufnr=bufnr})
      end,
    })
  end
}

return opts
