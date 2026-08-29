vim.g.mapleader = " "

vim.opt.expandtab = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.autoindent = true
vim.opt.smartindent = true


vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.api.nvim_create_user_command("W", function()
  vim.cmd("SudaWrite")
end, {})

vim.api.nvim_create_user_command("R", function()
  vim.cmd("SudaRead")
end, {})

vim.opt.number = true
vim.opt.relativenumber = true

-- disable netrw

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

require("nvim-tree").setup()
require("config.highlights")

vim.cmd.colorscheme("tokyonight")
