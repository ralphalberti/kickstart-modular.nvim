-- Faster file searching
-- Hidden files become visible
return {
  'nvim-telescope/telescope.nvim',
  opts = function(_, opts)
    opts = opts or {}
    opts.defaults = opts.defaults or {}
    opts.pickers = opts.pickers or {}
    opts.pickers.find_files = opts.pickers.find_files or {}

    opts.defaults.file_ignore_patterns = {
      'node_modules',
      '.git/',
      'dist',
      'build',
      'target',
    }

    return opts
  end,
}
