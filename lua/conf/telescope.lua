local actions = require("telescope.actions")

require("telescope").setup {
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close,
                ["l"] = actions.file_edit
            }
        },
        file_ignore_patterns = { "./node_modules" }
    }
}


--按键设置
vim.keybinds.gmap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>fm", "<cmd>Telescope marks<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<CR>", vim.keybinds.opts)
