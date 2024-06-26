local Profile = require("klaoude.profile")
local Utils = require("klaoude.utils")

---@class Tweaks
---@field icons klaoude.tweaks.icons
---@field logos klaoude.tweaks.logos
local M = {}

setmetatable(M, {
	__index = function(_, k)
		local mod = require("klaoude.tweaks." .. k)
		return mod
	end,
})

---@param mod "autocmds" | "options" | "commands"
M.load = function(mod)
	Utils.try(function()
		require("klaoude.tweaks." .. mod)
	end, { msg = "Error loading '" .. mod .. "'" })
end

function M.setup()
	local group = vim.api.nvim_create_augroup(Profile.name, { clear = true })
	local no_file = vim.fn.argc(-1) == 0
	-- Lazy load `autocmds` when opening a file
	if not no_file then
		M.load("autocmds")
		M.load("commands")
	end

	vim.api.nvim_create_autocmd("User", {
		pattern = "VeryLazy",
		group = group,
		callback = function()
			if no_file then
				M.load("autocmds")
				M.load("commands")
			end
			M.load("keymaps")
		end,
	})
end

M.did_init = false
function M.init()
  -- stylua: ignore
  if M.did_init then return end
	M.did_init = true

	M.load("options")
end

return M
