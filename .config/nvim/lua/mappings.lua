require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", {desc = "Add breakpoint line"})
map("n", "<leader>dr", "<cmd>DapContinue<CR>", {desc = "Start or continue the debugger"})

map("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
