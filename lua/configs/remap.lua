vim.g.mapleader = " "

vim.keymap.set({"n", "v"}, "j", "jzz")
vim.keymap.set({"n", "v"}, "k", "kzz")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gvzz")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gvzz")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set({"n", "v"}, "{", "{zz")
vim.keymap.set({"n", "v"}, "}", "}zz")
vim.keymap.set({"n", "v"}, "G", "Gzz")
vim.keymap.set("n", "<Tab>", ">>")
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("v", "<Tab>", ">gvzz")
vim.keymap.set("v", "<S-Tab>", "<gvzz")
vim.keymap.set("v", "o", "ozz")
vim.keymap.set("n", "%", "%zz")
vim.keymap.set("n", "<A-j>", "gT") -- previous tab
vim.keymap.set("n", "<A-k>", "gt") -- next tab

vim.keymap.set("n", "<A-w>", ":tabe " .. vim.fn.expand('%') .. "<CR>") -- open new tab with the current file
vim.keymap.set("n", "<A-q>", ":tabc <CR>") -- close tab

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- format file based on the lsp server

--vim.keymap.set("n", "<leader>r", "<cmd>!gcc ./*.c -o main<CR>")

vim.keymap.set("n", "<C-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

if jit.os == "Windows" then
    vim.keymap.set("n","<leader>r", ":silent !& cd SocialNetworkMovies; Start-Process -WindowStyle Minimized -FilePath \"dotnet\" -ArgumentList \"run --lauchProfile \'IIS Express\' --urls=http://localhost:5003\"<CR>")
elseif jit.os == "Linux" then
    vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x % && ./%<CR>", { silent = true })
end

-- window handling
vim.keymap.set("n", "<leader>l", "<C-w><C-l>") -- move to the window on the right
vim.keymap.set("n", "<leader>j", "<C-w><C-j>") -- move to the window below
vim.keymap.set("n", "<leader>k", "<C-w><C-k>") -- move to the window above
vim.keymap.set("n", "<leader>h", "<C-w><C-h>") -- move to window on left
vim.keymap.set("n", "<leader>s", "<C-w><C-s>") --new window horrizontally
vim.keymap.set("n", "<leader>v", "<C-w><C-v>") -- new window vertically
vim.keymap.set("n", "<leader>q", "<C-w><C-q>") -- quit window
vim.keymap.set("n","-", "<C-w>-") -- increase windows height
vim.keymap.set("n","+", "<C-w>+") -- decrease windows height
vim.keymap.set("n",">", "<C-w>>") -- decrease windows width
vim.keymap.set("n","<", "<C-w><") -- decrease windows width
vim.keymap.set("n","<leader>=", "<C-w>=") -- equalize windows

vim.keymap.set({"n", "v"}, "<leader>a", "<esc>ggVG")       --basically a CTRL + A selects the whole file in visual mode so you can yarn (copy) or delete the whole file

-- Glow remap
vim.keymap.set("n", "<leader>gg", vim.cmd.Glow)

-- plugins keymap
-- fugitive
--
-- https://cheatography.com/isaacnewton/cheat-sheets/fugitive/ All fugitives keymaps
-- vim.keymap.set("n", "<leader>gs", vim.cmd.Git) same as git status
--
-- harpoon
--vim.keymap.set("n", "<C-f>a", mark.add_file)
--vim.keymap.set("n", "<C-p>", ui.toggle_quick_menu)
--
--vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
--vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
--
--lsp_zero
--
--vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts) get definition
--vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts) word search
--vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts) view diagnostic
--vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts) first occurence
--vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts) last occurence
--vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts) suggests a fix
--vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts) view references
--vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts) change "this" occurence
-- vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, {}) get other references in the project (meant to work with telescope but it isn't working)
--
--
-- telescope
--
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--vim.keymap.set('n', '<C-g>', builtin.git_files, {})
--vim.keymap.set('n', '<leader>ps' searh with the given string in Grep >
--
--
-- undotree
--
-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle) shows history of the current file
--
--
--['<C-k>'] = cmp.mapping.select_prev_item(cmp_select), same as ^^
--['<C-j>'] = cmp.mapping.select_next_item(cmp_select), same as  ^^
--['<Enter>'] = cmp.mapping.confirm({ select = true }), accept autocomplete
--['<Tab>'] = cmp.mapping.confirm({ select = true }), same as ^^
--['<C-Space>'] = cmp.mapping.complete(),
--
-- nvim-tree
--
-- vim.keymap.set("n", "<C-o>", vim.cmd.NvimTreeToggle)
-- a - creates a file/folder (in nvim-tree context)
-- d - deletes a file/folder (in nvim-tree context)
-- e - renames a file/folder (in nvim-tree context)
-- H - toggles dotfiles
-- I - Toggles Git ignored files
