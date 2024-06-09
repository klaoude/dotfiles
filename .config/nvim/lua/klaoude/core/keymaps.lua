vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("t", "<Esc>", "<C-\\><C-n>")
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear seach highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window veritically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Slpit window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>l", "<C-w>>", { desc = "Increase window width" })
keymap.set("n", "<leader>h", "<C-w><", { desc = "Decrease window width" })
keymap.set("n", "<leader>k", "<C-w>+", { desc = "Increase window height" })
keymap.set("n", "<leader>j", "<C-w>-", { desc = "Decrease window height" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
