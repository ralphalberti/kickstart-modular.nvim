-- You can add your own plugins here or in other files in this directory!
-- This file gathers plugin tables from other modules (e.g., themes.lua)
-- and returns a single table for require("lazy").setup(...)

local plugins = {}

-- Require other plugin modules and merge their returned tables.
-- Add more requires here as you create other files in lua/custom/plugins/.
local ok, themes = pcall(require, 'custom.plugins.themes')
if ok and type(themes) == 'table' then
  for _, p in ipairs(themes) do
    table.insert(plugins, p)
  end
end

-- You can also add inline plugin entries here, e.g.:
-- table.insert(plugins, { "some/other-plugin" })

return plugins
