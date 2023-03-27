---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<leader>tt"] = {
      function()
        require("base46").toggle_theme()
      end,
      "toggle theme",
    },
  },
}

M.disabled = {
  n = {
    ["<leader>/"] = false,
  },

  v = {
    ["<leader>/"] = false,
  },
}

-- more keybinds!
--

return M
