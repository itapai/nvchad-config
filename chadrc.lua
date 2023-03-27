---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "bearded-arc",
  theme_toggle = { "bearded-arc", "blossom_light" },

  statusline = {
    separator_style = "block",
  },
}

M.options = {}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
