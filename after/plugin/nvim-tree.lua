local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- custom mappings
    vim.keymap.set({ "n", "v" }, "<C-o>", vim.cmd.NvimTreeToggle)
    -- remap the > and < because nvim-tree has a default remap for these keys
    vim.keymap.set("n", ">", "<C-w>>")
    vim.keymap.set("n", "<", "<C-w><")
end

require("nvim-tree").setup({
    view = {
        width = 30,
        relativenumber = true,
        number = true
    },
    renderer = {
        group_empty = true,
        icons = {
            glyphs = {
                default = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                },
                git = {
                    unstaged = "U",
                    staged = "S",
                    unmerged = "UM",
                    renamed = "➜",
                    untracked = "UT",
                    deleted = "D",
                    ignored = "◌",
                },
            },
        },
    },
    on_attach = my_on_attach()
})
