# Changelog

All notable changes to this Neovim configuration will be documented in this file.

## [0.5.0] - 2026-03-21

### Added

#### Debugging

- Python debugging with `nvim-dap`, `nvim-dap-ui`, and `nvim-dap-python`
- Debugger keymaps for continue, stepping, breakpoints, REPL, and UI toggle
- Variable inspection through `dap-ui` and hover evaluation

#### Snippets

- Snippet support with `LuaSnip` and `friendly-snippets`
- Custom snippet navigation keymaps
- Custom Python, Lua, HTML, CSS, and JavaScript snippets
- Advanced Lua-based snippets with choice-node support
- Starter Django-oriented snippets

## [0.4.0] - 2026-03-16

### Added

- feat: add python formatting with black via conform.nvim
- docs: update changelog for python formatting feature

## [0.3.0] - 2026-03-14

### Added

- feat: enable python linting with nvim-lint and ruff
- docs: update changelog for linting feature

## [0.2.0] - 2026-03-13

### Added

- Autopairs plugin moved to lua/custom/plugins and installed
- Indent_line plugin moved to lua/custom/plugins and installed
- Added this changelog

## [0.1.0] - 2026-03-12

### Added

- Custom plugin namespace (`lua/custom/plugins`)
- Neo-tree file explorer
- Telescope hidden-file search
- Custom options override file
- Custom keymap override system

### Changed

- Telescope `<leader>sf` mapping to support hidden files
- Telescope `<leader>sF` mapping to support ignored files

## [bootstrap-working] - 2026-03-09

### Added

- Initial kickstart-modular config

### Fixed

- Fix treesitter config path after upstream breaking change
