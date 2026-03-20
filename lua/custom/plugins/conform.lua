return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      python = { 'black' },
      markdown = { 'markdownlint' },
      lua = { 'stylua' },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
  },
}
