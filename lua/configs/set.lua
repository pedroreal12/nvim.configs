vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.undodir = os.getenv("UserProfile") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.guicursor = "n-v-c-i:block"

vim.opt.shell="powershell"
vim.opt.shellcmdflag="-NoLogo -NoProfile -ExecutionPolicy -RemoteSigned -Command "
vim.opt.shellquote=""
vim.opt.shellxquote=""
vim.opt.shellpipe="| Out-File -Encoding UTF8 %s"
vim.opt.shellredir="| Out-File -Encoding UTF8 %s"

vim.opt.clipboard:append { 'unnamed', 'unnamedplus' } -- allows yanking and putting text outside of vim 

vim.g.mapleader = " "
