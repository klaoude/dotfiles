
local M = {}

function M.bootstrap()
  require("klaoude.core")
  require("klaoude.tweaks").setup()
  require("klaoude.lazy")
end

return M
