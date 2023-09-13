---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
M.ui = {
  theme = "sweetpastel",
  theme_toggle = { "everblush", "tokyonight" },
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

vim.cmd[[colorscheme lushwal]]
vim.cmd[[hi DiffDelete NONE
        hi DiffAdd NONE
        hi DiffChange NONE
        hi CursorLine guifg=white]]

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
