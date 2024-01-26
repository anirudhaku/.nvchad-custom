---@type ChadrcConfig

local M = {}

M.ui = {
  theme = "melange",
  hl_override = {
    Comment = {
      fg = "blue"
    },
    String = {
      fg = "red"
    }
  },
  statusline = {
    overriden_modules = function(modules)
      for key, _ in pairs(modules) do
        modules[key] = nil
      end

      local my_statusline = require("custom.anirudha.statusline")
      table.insert(modules, my_statusline.mode())
      table.insert(modules, my_statusline.fileInfo())
      table.insert(modules, my_statusline.git())
      table.insert(modules, "%=")
      table.insert(modules, my_statusline.LSP_progress())
      table.insert(modules, "%=")
      table.insert(modules, my_statusline.LSP_Diagnostics())
      table.insert(modules, my_statusline.LSP_status() or "")
      table.insert(modules, my_statusline.cwd())
      table.insert(modules, my_statusline.cursor_position())
    end
  }
}
M.plugins = "custom.anirudha.plugins"

return M
