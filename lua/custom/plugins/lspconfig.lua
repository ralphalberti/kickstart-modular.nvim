return {
  {
    'neovim/nvim-lspconfig',
    init = function()
      vim.lsp.config('pyright', {
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = 'openFilesOnly',
              useLibraryCodeForTypes = true,
              typeCheckingMode = 'off',

              -- Let Ruff own unused import/variable diagnostics.
              diagnosticSeverityOverrides = {
                reportUnusedImport = 'none',
                reportUnusedVariable = 'none',
              },
            },
          },
        },
      })
    end,
  },
}
