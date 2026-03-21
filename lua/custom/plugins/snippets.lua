return {
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
    event = 'InsertEnter',
    config = function()
      local ls = require 'luasnip'

      ls.config.set_config {
        history = true,
        updateevents = 'TextChanged,TextChangedI',
      }

      require('luasnip.loaders.from_vscode').lazy_load()
      require('luasnip.loaders.from_vscode').lazy_load {
        paths = { vim.fn.stdpath 'config' .. '/snippets' },
      }

      -- load my own complex snippets
      require('luasnip').add_snippets('python', require 'custom.snippets.python')

      vim.keymap.set({ 'i', 's' }, '<Tab>', function()
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, false, true), 'n', true)
        end
      end, { silent = true, desc = 'Snippet: Expand or jump' })

      vim.keymap.set({ 'i', 's' }, '<S-Tab>', function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<S-Tab>', true, false, true), 'n', true)
        end
      end, { silent = true, desc = 'Snippet: Jump backward' })
      vim.keymap.set({ 'i', 's' }, '<M-e>', function()
        if ls.expandable() then
          ls.expand()
        end
      end, { silent = true, desc = 'Snippet: Expand' })

      vim.keymap.set({ 'i', 's' }, '<M-n>', function()
        if ls.jumpable(1) then
          ls.jump(1)
        end
      end, { silent = true, desc = 'Snippet: Jump forward' })

      vim.keymap.set({ 'i', 's' }, '<M-p>', function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end, { silent = true, desc = 'Snippet: Jump backward' })

      vim.keymap.set({ 'i', 's' }, '<M-c>', function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end, { silent = true, desc = 'Snippet: Next choice' })
    end,
  },
}
