# Changelog

All notable changes to this Neovim configuration will be documented in this file.

The format loosely follows Keep a Changelog.

---

## [0.4.0] - 2026-03-21

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

## [0.3.0] - 2026-03-16

### Added

- Python formatting with **Black** via `conform.nvim`
- Markdown linting using `markdownlint`
- Markdown lint configuration via `.markdownlint.json`

---

## [0.2.0] - 2026-03-14

### Added

- Python linting with `nvim-lint`
- Ruff integration for fast Python linting
- Initial `CHANGELOG.md`

---

## [0.1.0] - 2026-03-13

### Added

- Neo-tree file explorer
- Autopairs plugin
- Indent line plugin
- Custom plugin namespace (`lua/custom/plugins`)
- Custom options override file
- Custom keymap override system

### Changed

- Telescope `<leader>sf` mapping updated to support hidden files
- Telescope `<leader>sF` mapping updated to support ignored files

---

## [bootstrap-working] - 2026-03-09

### Added

- Initial `kickstart-modular.nvim` configuration

### Fixed

- Treesitter configuration path issue during startup
