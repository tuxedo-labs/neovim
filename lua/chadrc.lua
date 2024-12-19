---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "kanagawa",
  transparency = true,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  tabufline = {
    enabled = false,
  },
  statusline = {
    theme = "vscode",
    separator_style = "round",
  },
}

return M
