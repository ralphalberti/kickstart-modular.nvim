-- Custom keymap for Telescope <leader>sf
-- Adds functionality to search for hidden files and ignored files
--
-- User VeryLazy fires after Lazy has finished setting up plugin keys.
-- So the order becomes:
-- 1. kickstart keymaps load
-- 2. Lazy/Telescope installs its <leader>sf
-- 3. your VeryLazy callback runs
-- 4. your <leader>sf replaces it

vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  callback = function()
    vim.keymap.set('n', '<leader>sf', function()
      require('telescope.builtin').find_files {
        hidden = true,
      }
    end, { desc = '[S]earch [F]iles' })

    vim.keymap.set('n', '<leader>sF', function()
      require('telescope.builtin').find_files {
        hidden = true,
        no_ignore = true,
      }
    end, { desc = '[S]earch [F]iles (all)' })
  end,
})
