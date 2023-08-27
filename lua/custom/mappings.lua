---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft <CR>", "Move Left"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp <CR>", "Move Up"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown <CR>", "Move Down"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight <CR>", "Move Right"},
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
