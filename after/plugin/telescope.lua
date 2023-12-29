local telescope = require('telescope')
local builtin = require('telescope.builtin')
telescope.setup({
    vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case'
    },
})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set({ "n", "v" }, '<leader>ps', builtin.grep_string, {})
