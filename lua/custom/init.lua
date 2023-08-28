-- local autocmd = vim.api.nvim_create_autocmd
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.cmd [[set clipboard=]]
vim.cmd [[set so=999]]
-- vim.cmd [[set colorscheme pywal]]
-- vim.cmd[[au BufEnter * NeoRoot]]
vim.cmd('colorscheme default')
-- vim.api.nvim_set_keymap('n', '<Leader>p', [[<Cmd>NeoRootSwitchMode<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>pre', [[<Cmd>NeoRootChange<CR>]], { noremap = true, silent = true })
