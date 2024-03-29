require('telescope').setup{
    defaults = {
        layout_config = {
            vertical = { width = 0.5 }
        },
    },
    pickers = {
        find_files = {
            theme = dropdown
        },
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
