return {
  'stevearc/conform.nvim',
  opts = {
    -- formatters_by_ft = {
    --   python = { 'black' },
    --   markdown = { 'markdownlint' },
    --   lua = { 'stylua' },
    -- },
    formatters_by_ft = {
      python = { 'black' },
      lua = { 'stylua' },
      markdown = { 'markdownlint' },

      html = { 'prettierd', 'prettier', stop_after_first = true },
      css = { 'prettierd', 'prettier', stop_after_first = true },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      json = { 'prettierd', 'prettier', stop_after_first = true },
    },
    format_on_save = {
      timeout_ms = 3000,
      lsp_format = 'fallback',
    },
  },
}
