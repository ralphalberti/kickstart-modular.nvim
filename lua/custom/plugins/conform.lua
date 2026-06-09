return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      python = { 'black' },
      markdown = { 'markdownlint' },
      lua = { 'stylua' },
      html = { 'prettierd', 'prettier', stop_after_first = true },
    },
    format_on_save = {
      timeout_ms = 3000,
      lsp_format = 'fallback',
    },
  },
}
