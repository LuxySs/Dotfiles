---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["<C-o>"] = { "<cmd> Oil <CR>", "Start Oil (file manager)" },
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
}

M.dap = {
	plugin = true,
	n = {
		["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Add breakpoint" },
		["<leader>dc"] = { "<cmd> DapContinue <CR>", "Start/continue the debugger" },
		["<leader>i"] = { "<cmd> DapStepInto <CR>", "Step Into" },
		["<leader>o"] = { "<cmd> DapStepOver <CR>", "Step Over" },
		["<leader>ou"] = { "<cmd> DapStepOut <CR>", "Step Out" },
		["<leader>q"] = { "<cmd> DapStepOut <CR>", "Step Out" },
	},
}

-- more keybinds!

return M
