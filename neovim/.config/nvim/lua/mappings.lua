require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del
local harpoon = require "harpoon"

map("i", "jk", "<ESC>")
map("n", "<leader>fd", "<cmd>e#<CR>", { desc = "toggle last used file" })
nomap("n", "<leader>h")

-- Harpoon
map("n", "<leader>ha", function()
  harpoon:list():add()
end, { desc = "harpoon add file" })
map("n", "<leader>hh", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "harpoon open window" })
map("n", "<C-h>", function()
  harpoon:list():select(1)
end, { desc = "harpoon goto 1" })
map("n", "<C-j>", function()
  harpoon:list():select(2)
end, { desc = "harpoon goto 2" })
map("n", "<C-k>", function()
  harpoon:list():select(3)
end, { desc = "harpoon goto 3" })
map("n", "<C-l>", function()
  harpoon:list():select(4)
end, { desc = "harpoon goto 4" })
-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function()
  harpoon:list():prev()
end, { desc = "harpoon prev" })
map("n", "<C-S-N>", function()
  harpoon:list():next()
end, { desc = "harpoon next" })

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
