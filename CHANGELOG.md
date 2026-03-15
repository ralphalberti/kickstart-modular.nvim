# Changelog

All notable changes to this Neovim configuration will be documented in this file.

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
