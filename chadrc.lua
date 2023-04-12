---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "decay",
  theme_toggle = { "decay", "blossom_light" },

  statusline = {
    separator_style = "block",
  },
}

M.options = {}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
