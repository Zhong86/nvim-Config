--BASIC CUSTOMIZATION
vim.opt.number = true
vim.g.mapleader = " "
vim.cmd("set cindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set ignorecase")

--KEYBINDS
vim.keymap.set('n', '<leader>p', ':!php -l %<CR>', {noremap=true, silent=true})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'def', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', "<leader>ow", '<cmd>lua vim.ui.open(vim.fn.expand("%"))<CR>', { desc = "Open HTML in browser" })
vim.keymap.set('n', "<leader>td", ":Todo<CR>", {silent = true})


