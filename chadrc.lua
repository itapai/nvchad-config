---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "kanagawa",
  theme_toggle = { "kanagawa", "one_light" },

  statusline = {
    separator_style = "block",
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
