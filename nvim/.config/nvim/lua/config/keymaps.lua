-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<ESC>", { silent = true })

vim.keymap.set("n", "<F5>", ":split | terminal python %<CR>", { desc = "Run Python file" })

-- Molten (Jupyter) keymaps
vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>",                   { desc = "Molten: init kernel", silent = true })
vim.keymap.set("n", "<leader>me", ":MoltenEvaluateOperator<CR>",       { desc = "Molten: evaluate operator", silent = true })
vim.keymap.set("n", "<leader>ml", ":MoltenEvaluateLine<CR>",           { desc = "Molten: evaluate line", silent = true })
vim.keymap.set("v", "<leader>mv", ":<C-u>MoltenEvaluateVisual<CR>",    { desc = "Molten: evaluate visual", silent = true })
vim.keymap.set("n", "<leader>mr", ":MoltenReevaluateCell<CR>",         { desc = "Molten: re-run cell", silent = true })
vim.keymap.set("n", "<leader>md", ":MoltenDelete<CR>",                 { desc = "Molten: delete cell", silent = true })
vim.keymap.set("n", "<leader>mh", ":MoltenHideOutput<CR>",             { desc = "Molten: hide output", silent = true })
vim.keymap.set("n", "<leader>mo", ":noautocmd MoltenEnterOutput<CR>",  { desc = "Molten: enter output", silent = true })
