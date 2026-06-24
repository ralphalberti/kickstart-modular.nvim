-- lua/custom/plugins/themes.lua
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup { flavour = 'mocha', integrations = { telescope = true, cmp = true, nvimtree = true } }
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup { dark_variant = 'main', disable_background = false }
    end,
  },
}
