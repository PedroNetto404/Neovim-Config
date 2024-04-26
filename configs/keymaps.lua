local builtin = require("telescope.builtin")

-- file explorer keymaps
vim.keymap.set('n', '<C-t>', builtin.find_files, {})
vim.keymap.set('n', '<C-if>', builtin.live_grep, {})
vim.keymap.set('n', '<C-e>', ':Neotree filesystem reveal left<CR>', {})
