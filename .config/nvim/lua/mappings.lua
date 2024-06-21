require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", {desc = "Add breakpoint line"})
map("n", "<leader>dr", "<cmd>DapContinue<CR>", {desc = "Start or continue the debugger"})

map("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

map("n", "<C-d>", "<C-d>zz", {desc = "Go down by half a page"})
map("n", "<C-u>", "<C-u>zz", {desc = "Go up by half a page"})

map("n", "n", "nzzzv", {desc = "Next and center line"})
map("n", "N", "Nzzzv", {desc = "Prev and center line"})



-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
