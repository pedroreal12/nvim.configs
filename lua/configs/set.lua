vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

--vim.opt.undodir = os.getenv("UserProfile") .. "/.vim/undodir" windows folder
if jit.os == "Windows" then
    vim.opt.undodir = os.getenv("UserProfile") .. "/.vim/undodir"
    vim.opt.shell = "powershell"
    vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy -RemoteSigned -Command "
    vim.opt.shellquote = ""
    vim.opt.shellxquote = ""
    vim.opt.shellpipe = "| Out-File -Encoding UTF8 %s"
    vim.opt.shellredir = "| Out-File -Encoding UTF8 %s"
elseif jit.os == "Linux" then
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
else
    print("SO not compatible with this neovim config, add your directory in the config/set.lua")
end

vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50
vim.opt.guicursor = "n-v-c-i:block"

vim.opt.clipboard:append { 'unnamed', 'unnamedplus' } -- allows yanking and putting text outside of vim
vim.opt.isfname:append("@-@")

vim.g.mapleader = " "
