require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del
local harpoon = require "harpoon"

map("i", "jk", "<ESC>")
nomap("n", "<leader>h")

-- Harpoon
map("n", "<leader>ha", function()
  harpoon:list():add()
end)
map("n", "<leader>hh", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
map("n", "<C-h>", function()
  harpoon:list():select(1)
end)
map("n", "<C-j>", function()
  harpoon:list():select(2)
end)
map("n", "<C-k>", function()
  harpoon:list():select(3)
end)
map("n", "<C-l>", function()
  harpoon:list():select(4)
end)
-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
map("n", "<C-S-N>", function()
  harpoon:list():next()
end)
