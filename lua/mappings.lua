require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- my keymaps
map("n", "<leader>X", ":tabclose<CR>", { desc = "Close current tab" })

-- neogit
map("n", "<leader>gc", ":Neogit commit<CR>", { desc = "Neogit commit" })
map("n", "<leader>gP", ":Neogit push<CR>", { desc = "Neogit push" })
map("n", "<leader>gS", ":Neogit stash<CR>", { desc = "Neogit stash" })
map("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "View branches" })
map("n", "<leader>gd", ":Neogit diff<CR>", { desc = "Neogit diff" })
map("n", "<leader>gf", ":Neogit fetch<CR>", { desc = "Neogit fetch" })
map("n", "<leader>gl", ":Neogit log<CR>", { desc = "Neogit log" })
map("n", "<leader>gp", ":Neogit pull<CR>", { desc = "Neogit pull" })
map("n", "<leader>gg", ":Neogit<CR>", { desc = "Open neogit" })

-- gitsign
map("n", "<leader>gB", ":Gitsigns blame<CR>", { desc = "Open git blame" })

-- fterm
vim.keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true })
vim.keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true })

-- todo comments
local todo = require "todo-comments"
map("n", "<leader>tt", ":TodoTelescope<CR>", { desc = "Todo Telescope" })

map("n", "]t", function()
  todo.jump_next()
end, { desc = "Next todo comment" })

map("n", "[t", function()
  todo.jump_prev()
end, { desc = "Previous todo comment" })

-- noice
map("n", "<leader>dd", ":Noice dismiss<CR>", { desc = "Noice dismiss" })

-- can also specify a list of valid jump keywords

-- vim.keymap.set("n", "]t", function()
--   require("todo-comments").jump_next { keywords = { "ERROR", "WARNING" } }
-- end, { desc = "Next error/warning todo comment" })

-- go.nvim
map("n", "<leader>pfs", ":GoFillStruct<CR>", { desc = "Auto fill Go struct" })
map("n", "<leader>pie", ":GoIfErr<CR>", { desc = "Add Go if err" })
map("n", "<leader>pat", ":GoAddTag<CR>", { desc = "Add Go tag" })
