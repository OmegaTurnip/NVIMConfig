vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "rounded",
    max_width = 80,
    max_height = 20,
  }
)
vim.cmd([[
  highlight NormalFloat guibg=#1e1e2e guifg=#cdd6f4
  highlight FloatBorder guibg=#1e1e2e guifg=#89b4fa
]])
