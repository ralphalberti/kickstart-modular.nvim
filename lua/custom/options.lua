-- Ralph's Neovim options

-- relative line numbers
vim.o.relativenumber = true

-- keep cursor centered
vim.o.scrolloff = 5

-- faster responsiveness
vim.o.updatetime = 200

-- better command completion
vim.o.wildmode = 'longest:full,full'

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

local border = 'rounded'

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = border,
  max_width = 80,
  max_height = 20,
})

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = border,
  max_width = 80,
  max_height = 20,
})
